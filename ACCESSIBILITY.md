# Accessibility

Every config in this repository is chosen for readability first. Alacritty, Kitty and Hyper share one palette and the same settings, so switching terminals changes nothing about how text reads.

## Vision

| Need | Setting |
| --- | --- |
| Low or monocular vision | Light grey `#bbbbbb` text on pure black `#000000`, a contrast ratio of 10.9:1, well above the WCAG AAA level of 7:1 |
| Glare over long sessions | Light grey rather than pure white text, which glares against a black background |
| Contrast lost to the background | Windows are fully opaque (`1.0`), since a see-through window lets whatever sits behind it lower the contrast |
| Text crowding the edge | Alacritty keeps 10 px of padding between the text and the window frame |
| Colour vision differences | The ANSI colour slots stay at each terminal's defaults, so a palette built for a specific colour vision difference can go on top without fighting this one |
| Losing track in long output | 10,000 lines of scrollback |

## Font size

Every config starts at 13 points. Raise `size` in Alacritty, `font_size` in Kitty or `fontSize` in Hyper. Any installed monospaced font can replace the platform default listed in [guides/reference.md](guides/reference.md).

## Feedback wanted

If something here gets in the way, open an [issue](https://github.com/zaccesss/terminal-config/issues/new/choose) describing what happened and what would work better.
