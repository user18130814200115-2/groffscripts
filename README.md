# groffscripts (modular branch)
My personal collection files used for typesetting.
Check the respective folders for more information and documentation

## Scrips
I use a few scripts to accelerate my workflow
- mkdoc compile groff documents
- tys bootstrap an editing environment / template

## Editors
Supported editors are
- (neo)vim
- Gedit

## Modules
The "modules" folder contains a number of source-able `tmac` files
which can be inserted into any given `groff_mom` file.
The only exception is `od.tmac` which is a macro superset of mom
callable like so:
```
groff -mod
```
This file combines the ability to call modules (`.MODULE`)
with the `mom` macro set.
Information on the specific modules can be found in `data/README.md`.

### Installation
The modules should be installed to a valif groff macro folder,
the prefered install path is `~/.local/share/groff/`.
Keep in mind that this is not a default groff path.
To allow groff to call mdules in this path, you need to source the `environmet`
file in your shell's env file (for instance `.zshenv`, `.bashrc`).
This file also presets the groff compiler to use utf-8 encoding
and the -Tpdf output device.
It also allows for the installation of fonts to
`~/.local/share/groff/site-font/`

Alternatively, you may install the modules folder and od.tmac file
directly to `/usr/share/groff/tmac`.
