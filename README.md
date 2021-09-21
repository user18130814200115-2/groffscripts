# groffscripts
My personal collection of groff scripts

## mkdoc
mkdoc is the shell script I use to compile my groff documents.

You simply give it a file with the syntax `<name>.<macro pagage>`, and it will select the right macro's and concatenate the default settings in `~/.local/share/groff/default.<macro package>`.

Keep in mind that `~` is currently set to my home folder `/home/user/` change this to suit your needs.
Furthermore, the default font I use is DejaVu, this does not come with groff so, once again, change this to suit your needs.

## nvim
neovim is my editor of choice.
The command Automkdoc, will execute the mkdoc command on your working file whenever you write `:w`.

Furthermore, any files called `bibliography.in` will be processed by `preconv` and output to `bibliography.groff`

### Syntax highlighting
mom escape sequences are colored as "Todo".

Colors are set to tundra, see [nord-tundra](https://github.com/user18130814200115-2/nordtheme_tundra).

### Plugins
plugins I use are goyo and limelight.

## settings
Settings in general contain boilerplate code for specific macro packages.
They must be placed in `~/.local/share/groff/settings` to be recognized by mkdoc.
### mom
- roman numeral support (see ## packages)
- NEW_CHAPTER macro
  + this macro can be called to make a new chapter which is automatically given a number
  + $1 is the chapter title
- PROLOGUE macro
  + Like NEW_CHAPER, but will be called prologue instead
- COVERPAGE macro
  + Make sure the coverpage is not paginated, also starts the document
- DEDICATION macro
- REFERENCE_STYLE macro
  + used to set the refer style (see ## packages)
- PLUGIN macro
  + can be called to load plugins (see ## packages)
- miscellaneous settings

### me
- tt and ta for title pages
- miscellaneous settings

## packages
Packages are tmac files designed to be sourced into groff projects.
The default.mom files includes a macro to load these packages called `PLUGIN`.
They must be placed in `~/.local/share/groff/packages` to be recognized.

### roman
The roman package registers 1000 roman numerals to be accessed programmatically.
The syntax is `\[ROMANx]` where `x` is your number of choice.
This Package is used in default.mom.

### chicago
Package here for redundancy, see [chicago-refer](https://github.com/user18130814200115-2/chicago-refer).
This Package is used in default.mom.
The .R1 .R2 block cannot be sourced though, it must be actually included in the final compiled document.

### dropcap
There are references to a sropcap macro, I did not make this myself.
It can be found [here](https://lists.gnu.org/archive/html/groff/2005-03/msg00133.html)

## Repo and releases
I will draft a release for every batch of changes with the exception of this README.
Actual changes to the workflow will increment the version number, bugfixes will increment the decimal.

In other words, if you use version 1.1, you can and should use 1.2 if it comes out.
However, version 2.1 might make changes to how everything works meaning that the same groff source file might compile differently.
