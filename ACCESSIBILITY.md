# Accessibility

Every config in this repository is chosen for readability first. Every terminal shares one High Contrast palette with a light and a dark half, so switching terminals changes nothing about how text reads.

> [!NOTE]
> Some of these settings are preferences rather than requirements. Change them freely in your own copy. If a change would help other people too, open an issue or a pull request so I can consider it for everyone.

## Vision

| Need | Setting |
| --- | --- |
| Low or monocular vision | Dark mode: near-white `#e0e0e0` text on pure black, 15.9:1. Light mode: `#1f1f1f` on white, 16.5:1. Both well above the WCAG AAA level of 7:1 |
| Telling colours apart | All 16 colours are set. Dark mode uses saturated colours that are easy to tell apart; every light-mode colour reaches 7:1 on white. The full table is in [guides/high-contrast.md](guides/high-contrast.md) |
| Working in light and dark | iTerm2, Kitty, Windows Terminal and Ptyxis switch with the system appearance. Terminal.app does too, through the login agent `mac/install.sh` sets up |
| Bold text | Bold keeps its colour rather than switching to the softer bright row |
| Glare over long sessions | Near-white rather than pure white text in dark mode |
| Contrast lost to the background | Windows are fully opaque (`1.0`), since a see-through window lets whatever sits behind it lower the contrast |
| Text crowding the edge | Alacritty keeps 10 px of padding between the text and the window frame |
| Colour vision differences | The palette is one JSON file, so a version tuned for a specific colour vision difference is one edit and one run of `scripts/build-themes.py` away |
| Losing track in long output | 10,000 lines of scrollback |

> [!WARNING]
> Dark mode's red (`#ff0f00`, 5.3:1) and bright red (`#df6c5a`, 6.4:1) sit below 7:1. They read
> clearly at a glance, but they meet only the WCAG AA level. Raise them in the palette for 7:1.

## Font size

Every config starts at 13 points. Raise `size` in Alacritty, `font_size` in Kitty or `fontSize` in Hyper. Any installed monospaced font can replace the platform default listed in [guides/reference.md](guides/reference.md).

> [!TIP]
> All three terminals zoom without editing the config. Alacritty and Hyper use `Ctrl+=`, `Ctrl+-` and `Ctrl+0` (`Cmd` on macOS). Kitty uses `Ctrl+Shift+=`, `Ctrl+Shift+-` and `Ctrl+Shift+Backspace` (`Cmd+=`, `Cmd+-` and `Cmd+0` on macOS).

## Feedback wanted

If something here gets in the way, open an [issue](https://github.com/zaccesss/terminal-config/issues/new/choose) describing what happened and what would work better.

## The shared statement

> [!NOTE]
> I keep one shared accessibility statement for all my projects: [zaccesss/accessibility](https://github.com/zaccesss/accessibility) or on [my site](https://isaacadjei.me/accessibility). This file takes precedence where the two differ.
