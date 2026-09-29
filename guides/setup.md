# Setup

Copy the config for your platform and terminal to the path in the table, creating the folder if it
does not exist. Restart the terminal afterwards.

## Config paths

| Terminal | macOS | Linux | Windows |
| --- | --- | --- | --- |
| Alacritty | `~/.config/alacritty/alacritty.toml` | `~/.config/alacritty/alacritty.toml` | `%APPDATA%\alacritty\alacritty.toml` |
| Kitty | `~/.config/kitty/kitty.conf` | `~/.config/kitty/kitty.conf` | not available |
| Hyper | `~/.hyper.js` | `~/.hyper.js` | `%APPDATA%\Hyper\.hyper.js` |

## Examples

```sh
mkdir -p ~/.config/alacritty
cp mac/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml   # use linux/ on Linux

mkdir -p ~/.config/kitty
cp mac/kitty/kitty.conf ~/.config/kitty/kitty.conf                   # use linux/ on Linux

cp mac/hyper/hyper.js ~/.hyper.js                                    # use linux/ on Linux
```

Windows (PowerShell):

```powershell
New-Item -ItemType Directory -Force $env:APPDATA\alacritty
Copy-Item windows\alacritty\alacritty.toml $env:APPDATA\alacritty\alacritty.toml
Copy-Item windows\hyper\hyper.js $env:APPDATA\Hyper\.hyper.js
```

## Verify it worked

Open a new terminal window. The background should be pure black with light grey text. If it is
not, check the terminal's own config path documentation, since the default location differs between
versions.
