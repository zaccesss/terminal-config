# Reference

## Palette

| Setting | Value | Why |
| --- | --- | --- |
| Background | `#000000` | Pure black gives the strongest contrast against light text and is easy on the eyes in a dark room. |
| Foreground | `#bbbbbb` | Light grey rather than pure white, which glares against a pure black background over a long session. |
| ANSI colours | terminal default | Left alone rather than invented, since a stylised palette is a matter of taste and is easy to add on top. |

## Why black and light grey, not a stylised theme

A published theme looks coordinated but is chosen for looks. This palette is chosen for contrast and
readability, the same choice across every terminal so switching between them changes nothing about
how text reads. Add a theme on top if you want colour, the ANSI slots are untouched.

## Other settings

| Setting | Value | Why |
| --- | --- | --- |
| Font size | `13` | A comfortable default that fits a wide terminal window on a laptop screen. |
| Scrollback | `10000` lines | Enough history to scroll back through a long build log. |
| Opacity | `1.0` | Fully opaque, since transparency reduces contrast. |
| Padding (Alacritty) | `10` px | Keeps text off the window edge. |

## Fonts per platform

| Platform | Font | Why |
| --- | --- | --- |
| macOS | `SF Mono` | Ships with macOS. |
| Linux | `DejaVu Sans Mono` | Present on most distributions. |
| Windows | `Consolas` | Ships with Windows. |

Swap in any monospaced font you have installed. A patched Nerd Font is needed if you use icons in
your prompt.

## Why no Kitty on Windows

Kitty has no native Windows build, so there is no `windows/kitty/` folder.
