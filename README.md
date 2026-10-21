# terminal-config

> The eight Zacess colour themes for Terminal.app, iTerm2, Windows Terminal, Ptyxis, GNOME
> Terminal, Alacritty, Kitty and Hyper, with Zacess Deep Contrast Dark as the default, plus starter
> configs with per-platform fonts.

## In action

Screenshots in the earlier High Contrast palette, dark and light, taken before the switch to the
Zacess themes. Each one links to a short animation of the same scene.

### Shell

| Dark | Light |
| --- | --- |
| [![Dark: the terminal in the earlier High Contrast palette showing a coloured git log, a ripgrep search and a diff summary](docs/demo/shell-dark.webp)](docs/demo/terminal-dark.gif) | [![Light: the terminal in the earlier High Contrast palette showing a coloured git log, a ripgrep search and a diff summary](docs/demo/shell-light.webp)](docs/demo/terminal-light.gif) |

### Neovim

| Dark | Light |
| --- | --- |
| [![Dark: Neovim with the high-contrast colour scheme editing a Python file, with the status line at the bottom](docs/demo/neovim-dark.webp)](docs/demo/terminal-dark.gif) | [![Light: Neovim with the high-contrast colour scheme editing a Python file, with the status line at the bottom](docs/demo/neovim-light.webp)](docs/demo/terminal-light.gif) |

### tmux

| Dark | Light |
| --- | --- |
| [![Dark: tmux with four coloured tabs named editor, git, search and shell, the editor window split into Neovim, git log, ripgrep and diff panes](docs/demo/tmux-dark.webp)](docs/demo/tmux-dark.gif) | [![Light: tmux with four coloured tabs named editor, git, search and shell, the editor window split into Neovim, git log, ripgrep and diff panes](docs/demo/tmux-light.webp)](docs/demo/tmux-light.gif) |

## What's here

Every terminal gets all eight Zacess themes from [Zacess Themes](https://github.com/zacesshq/themes),
with Zacess Deep Contrast Dark as the default: white on pure black with deep, fully saturated
colours. The theme stays fixed whatever the system appearance until it is changed. The colours live
in one file, [`palette/zacess.json`](palette/zacess.json), and
[`scripts/build-themes.py`](scripts/build-themes.py) writes every theme file from it. Every theme's
colours and how each terminal switches are in [guides/themes.md](guides/themes.md).

| Terminal | macOS | Linux | Windows |
| --- | --- | --- | --- |
| Alacritty | [`mac/alacritty/`](mac/alacritty/) | [`linux/alacritty/`](linux/alacritty/) | [`windows/alacritty/`](windows/alacritty/) |
| Kitty | [`mac/kitty/`](mac/kitty/) | [`linux/kitty/`](linux/kitty/) | not available, Kitty has no Windows build |
| Hyper | [`mac/hyper/`](mac/hyper/) | [`linux/hyper/`](linux/hyper/) | [`windows/hyper/`](windows/hyper/) |
| Terminal.app | [`mac/terminal-app/`](mac/terminal-app/) | not available | not available |
| iTerm2 | [`mac/iterm2/`](mac/iterm2/) | not available | not available |
| Ptyxis and GNOME Terminal | not available | [`linux/ptyxis/`](linux/ptyxis/), [`linux/gnome-terminal/`](linux/gnome-terminal/) | not available |
| Windows Terminal | not available | not available | [`windows/windows-terminal/`](windows/windows-terminal/) |

## Setup

Full walkthrough in [guides/setup.md](guides/setup.md), with the install path for each terminal
on each platform. Palette and font choices are explained in [guides/reference.md](guides/reference.md).

## Structure

| Path | Contents |
| --- | --- |
| [`ACCESSIBILITY.md`](ACCESSIBILITY.md) | Light and dark contrast, opaque windows and font sizing |
| [`palette/`](palette/) | The eight Zacess themes' terminal colours, the single source for every colour |
| [`scripts/`](scripts/) | `build-themes.py`, which writes every theme file from the palette |
| `<platform>/<terminal>/` | That terminal's config file for that platform |
| [`guides/`](guides/) | Setup walkthrough and reference |
