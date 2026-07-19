# Homebrew Tap

Homebrew packages published by [Recai Oktaş](https://github.com/roktas).

## Sevgi

[Sevgi](https://sevgi.roktas.dev) is a Ruby toolkit for creating SVG programmatically.

```sh
brew tap roktas/tap
brew install roktas/tap/sevgi
```

The formula supports macOS and headless Linux. It installs Sevgi's complete Ruby API, the `sevgi` and `igves` commands,
the native Cairo/librsvg/HexaPDF export stack, the packaged agent skill and RuboCop plugin, and the headless pdfcpu and
Poppler PDF tools. `sevgi --skill` prints the skill's stable Homebrew path.

Inkscape remains an optional external backend and is not installed with Sevgi. On macOS, install it separately when
needed:

```sh
brew install --cask inkscape
```
