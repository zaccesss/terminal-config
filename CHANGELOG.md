# Changelog

All notable changes to this project are recorded here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Changed

- Every terminal now carries all eight Zacess themes from Zacess Themes 0.3.0, generated from `palette/zacess.json`, which replaces the High Contrast palette. Zacess Deep Contrast Dark is the default and stays fixed whatever the system appearance. Generated files are named `zacess-<theme>`, `guides/high-contrast.md` is now `guides/themes.md` and the Windows Terminal fragment is `windows/windows-terminal/zacess.json`. Kitty includes the default theme and Alacritty imports it. The Terminal.app appearance helper takes its two profile names as arguments and is built but not started.

### Added

- Screenshots and short animations of the config in action, dark and light, in the README's In action section.
- The High Contrast palette in `palette/high-contrast.json`: vivid colours on black for dark mode, the same hues at 7:1 or more on white for light mode, with all 16 colours set.
- `scripts/build-themes.py` writes every theme file from it, plus the colour table in `guides/high-contrast.md`. CI fails on a stale file or a colour below its contrast floor.
- Themes for Terminal.app, iTerm2, Windows Terminal, Ptyxis and GNOME Terminal, with `mac/install.sh` to apply them on macOS. A small login agent switches Terminal.app with the system appearance.
- Initial release: starter configs for Alacritty, Kitty and Hyper with a high-contrast palette
- Per-platform fonts and install paths for macOS, Linux and Windows
- Setup and reference guides
- CI that validates every config file parses
- `ACCESSIBILITY.md`: the 10.9:1 contrast palette, opaque windows and font sizing.

### Changed

- Alacritty, Kitty and Hyper use the High Contrast palette instead of black and light grey with default colours. Kitty follows the system's light and dark setting.
- `ACCESSIBILITY.md`: a note that the settings are preferences, a callout for live zoom in each terminal and a link to the shared accessibility statement.
- Tidied code comments and the contributor guide.
