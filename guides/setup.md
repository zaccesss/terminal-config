# Setup

Copy the config for your platform and terminal to the path in the table, creating the folder if it
does not exist. Restart the terminal afterwards.

## Config paths

| Terminal | macOS | Linux | Windows |
| --- | --- | --- | --- |
| Alacritty | `~/.config/alacritty/alacritty.toml` | `~/.config/alacritty/alacritty.toml` | `%APPDATA%\alacritty\alacritty.toml` |
| Kitty | `~/.config/kitty/kitty.conf` | `~/.config/kitty/kitty.conf` | not available |
| Hyper | `~/.hyper.js` | `~/.hyper.js` | `%APPDATA%\Hyper\.hyper.js` |

## The High Contrast theme

Alacritty imports `high-contrast-dark.toml` from the same folder and Kitty reads its
`*-theme.auto.conf` files from the same folder, so copy those alongside the main config.

### macOS

```sh
./mac/install.sh
```

It adds the High Contrast Dark and High Contrast Light profiles to Terminal.app with a login agent
that switches between them as macOS changes appearance, links the iTerm2 Dynamic Profile and makes it the default, then links the Kitty and Alacritty theme files for
either one already set up.

> [!NOTE]
> With Terminal.app open, importing a profile opens one window per profile; close them once the
> profiles appear under Settings > Profiles. With iTerm2 open, pick High Contrast under
> Settings > Profiles > Other Actions > Set as Default instead.

### Linux

- **Ptyxis** (Ubuntu 25.10 and later): copy `linux/ptyxis/high-contrast.palette` to
  `~/.local/share/org.gnome.Ptyxis/palettes/`, then pick High Contrast under Preferences > Profile.
- **GNOME Terminal** (Ubuntu 24.04): `dconf load` the file in `linux/gnome-terminal/` onto a
  profile, as its first lines show.

### Windows Terminal

Copy `windows/windows-terminal/high-contrast.json` to
`%LOCALAPPDATA%\Microsoft\Windows Terminal\Fragments\HighContrast\`, then set the colour scheme
pair in `settings.json`:

```json
"profiles": { "defaults": { "colorScheme": { "dark": "High Contrast Dark", "light": "High Contrast Light" }, "intenseTextStyle": "bold" } }
```

`intenseTextStyle` keeps bold text in its own colour rather than the softer bright row.

## Examples

```sh
mkdir -p ~/.config/alacritty
cp mac/alacritty/*.toml ~/.config/alacritty/                         # use linux/ on Linux

mkdir -p ~/.config/kitty
cp mac/kitty/*.conf ~/.config/kitty/                                 # use linux/ on Linux

cp mac/hyper/hyper.js ~/.hyper.js                                    # use linux/ on Linux
```

Windows (PowerShell):

```powershell
New-Item -ItemType Directory -Force $env:APPDATA\alacritty
Copy-Item windows\alacritty\*.toml $env:APPDATA\alacritty\
Copy-Item windows\hyper\hyper.js $env:APPDATA\Hyper\.hyper.js
```

## Verify it worked

Open a new terminal window. In dark mode the background should be pure black with near-white text
and vivid colours; in light mode, white with near-black text, for the terminals that follow the
system setting. If it is not, check the terminal's own config path documentation, since the default
location differs between versions.
