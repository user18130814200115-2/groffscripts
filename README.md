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
The only exception is `eme.tmac` which is a file callable by `groff`
on the command line as a macro.
```
groff -meme
```
This file sources all modules in the repository.
The modules should be installed into
`/usr/share/groff/current/tmac/modues/`
except for `od.tmac` which should be placed in
`/usr/share/groff/current/tmac/`.
Information on the specific modules can be found in `tmac/README.md`.
