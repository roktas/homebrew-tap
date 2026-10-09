# Homebrew Tap

Homebrew packages published by [Recai Oktaş](https://github.com/roktas).

## Mainz

[Mainz](https://github.com/roktas/mainz) prepares editable PDFs from SVG and applies declared PDF styles.

```sh
brew install roktas/tap/mainz
```

## Sevgi

[Sevgi](https://sevgi.roktas.dev) is a Ruby toolkit for creating SVG programmatically.

```sh
brew tap roktas/tap
brew install roktas/tap/sevgi
```

The formula installs the Ruby API, `sevgi`, `igves`, and `igsev`, the native export stack, Mainz, and PDF tools.
It also installs the agent skill and RuboCop plugin. `sevgi --skill` prints the skill's Homebrew path.

Inkscape remains an optional external backend and is not installed with Sevgi. On macOS, install it separately when
needed:

```sh
brew install --cask inkscape
```
