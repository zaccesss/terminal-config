#!/usr/bin/env bash
#
# applies the High Contrast theme to every Mac terminal this repo covers. Safe to run again: each
# step checks what is already in place first. Terminal.app and iTerm2 are set up always; Kitty and
# Alacritty only when their config folder already exists.

set -Eeuo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly HERE

info() { printf '[INFO] %s\n' "$1"; }
ok() { printf '[ OK ] %s\n' "$1"; }
warn() { printf '[WARN] %s\n' "$1" >&2; }

link() {
    local source="$1" target="$2"
    mkdir -p "$(dirname "$target")"
    if [[ -L "$target" && "$(readlink "$target")" == "$source" ]]; then
        return
    fi
    if [[ -e "$target" && ! -L "$target" ]]; then
        mv "$target" "${target}.backup.$(date +%Y%m%d%H%M%S)"
    fi
    ln -sfn "$source" "$target"
    info "Linked ${target}"
}

running() { pgrep -x "$1" >/dev/null 2>&1; }

terminal_app() {
    local mode file
    for mode in Dark Light; do
        file="${HERE}/terminal-app/High Contrast ${mode}.terminal"
        if defaults read com.apple.Terminal "Window Settings" 2>/dev/null | grep -q "\"High Contrast ${mode}\" ="; then
            continue
        fi
        if running Terminal; then
            # importing through the app opens one window per profile; the preferences file is
            # only safe to edit while Terminal.app is closed
            open -g "$file"
        else
            /usr/bin/python3 - "$file" <<'PY'
import plistlib, subprocess, sys
profile = plistlib.load(open(sys.argv[1], "rb"))
prefs = plistlib.loads(subprocess.run(["defaults", "export", "com.apple.Terminal", "-"],
                                      capture_output=True, check=True).stdout)
prefs.setdefault("Window Settings", {})[profile["name"]] = profile
subprocess.run(["defaults", "import", "com.apple.Terminal", "-"], input=plistlib.dumps(prefs), check=True)
PY
        fi
        info "Added the High Contrast ${mode} profile to Terminal.app"
    done
}

iterm2() {
    link "${HERE}/iterm2/high-contrast.json" "${HOME}/Library/Application Support/iTerm2/DynamicProfiles/high-contrast.json"
    local guid
    guid="$(/usr/bin/python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["Profiles"][0]["Guid"])' "${HERE}/iterm2/high-contrast.json")"
    if [[ "$(defaults read com.googlecode.iterm2 "Default Bookmark Guid" 2>/dev/null || true)" == "$guid" ]]; then
        return
    fi
    if running iTerm2; then
        warn "iTerm2 is open: pick High Contrast under Settings > Profiles > Other Actions > Set as Default"
    else
        defaults write com.googlecode.iterm2 "Default Bookmark Guid" -string "$guid"
        info "Made High Contrast the default iTerm2 profile"
    fi
}

optional_apps() {
    local file
    if [[ -d "${HOME}/.config/kitty" ]]; then
        for file in dark-theme.auto.conf light-theme.auto.conf no-preference-theme.auto.conf; do
            link "${HERE}/kitty/${file}" "${HOME}/.config/kitty/${file}"
        done
    fi
    if [[ -d "${HOME}/.config/alacritty" ]]; then
        for file in high-contrast-dark.toml high-contrast-light.toml; do
            link "${HERE}/alacritty/${file}" "${HOME}/.config/alacritty/${file}"
        done
    fi
}

terminal_app
iterm2
optional_apps
ok "High Contrast theme applied"
