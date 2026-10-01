# terminal-config

> Starter configs for Alacritty, Kitty and Hyper: a high-contrast black and light grey palette,
> per-platform fonts and install paths.

## What's here

Each platform folder holds one config per terminal that runs on that platform. Every config uses
the same palette: a pure black background with a light grey foreground. ANSI colours stay at the
terminal's own defaults. Only the font and the install path change per platform.

| Terminal | macOS | Linux | Windows |
| --- | --- | --- | --- |
| Alacritty | [`mac/alacritty/`](mac/alacritty/) | [`linux/alacritty/`](linux/alacritty/) | [`windows/alacritty/`](windows/alacritty/) |
| Kitty | [`mac/kitty/`](mac/kitty/) | [`linux/kitty/`](linux/kitty/) | not available, Kitty has no Windows build |
| Hyper | [`mac/hyper/`](mac/hyper/) | [`linux/hyper/`](linux/hyper/) | [`windows/hyper/`](windows/hyper/) |

## Setup

Full walkthrough in [guides/setup.md](guides/setup.md), with the install path for each terminal
on each platform. Palette and font choices are explained in [guides/reference.md](guides/reference.md).

## Structure

| Path | Contents |
| --- | --- |
| [`ACCESSIBILITY.md`](ACCESSIBILITY.md) | The 10.9:1 contrast palette, opaque windows and font sizing |
| `<platform>/<terminal>/` | That terminal's config file for that platform |
| [`guides/`](guides/) | Setup walkthrough and reference |
