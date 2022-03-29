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
The only exception is `od.tmac` which is a file callable by `groff`
on the command line as a macro.
```
groff -mod
```
This file combines the ability to call modules (with the `.MODULE` macro)
with the `mom` macro set.
Information on the specific modules can be found in `tmac/README.md`.

### Installation
The modules should be installed to the groff macro folder,
on most systems this will be:
`/usr/share/groff/current/tmac/modues/`
While `od.tmac` which should be placed in
`/usr/share/groff/current/tmac/`.

Alternatively, you may install the modules folder and od.tmac file
to a more accessible location and add it to the `GROFF_TMAC_DIR`
variable like so:
`export GROFF_TMAC_PATH=prefered/folder/path`.
I personally keep my files in
`$XDG_DATA_DIR/groff/tmac`
