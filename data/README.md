# Data
## Installation
Data folder should be installed to a valid groff folder,
the preferred install path is `~/.local/share/groff/`.

Keep in mind that this is not a default groff path.
To allow groff to call modules in this path, you need to source the `environemnt`
file in your shell's `env` file (for instance `.zshenv` or `.bashrc`).
This file also presets the groff compiler to use utf-8 encoding
and the -Tpdf output device.
It also allows for the installation of fonts to
`~/.local/share/groff/site-font/`

Alternatively, you may install the modules folder and od.tmac file
directly to `/usr/share/groff/tmac`.
