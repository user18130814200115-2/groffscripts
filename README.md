# groffscripts
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

## Settings
The settings file in this repo is designed to be concatenated
(for instance, with `cat`) BEFORE your groff working document.
My Macros are built as a superset of the excellent `mom` macros.

## packages
Packages are tmac files designed to be sourced into groff projects.
The `settings/om` files includes a macro to load these packages called `PLUGIN`.
They must be placed in `~/.local/share/groff/packages` to be recognized.

