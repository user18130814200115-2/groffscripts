# groffscripts
My personal collection of groff scripts

## mkdoc
mkdoc is the shell script I use to compile my groff documents.

You simply live it a file with the syntax `<name>.<macro pagage>`, and it will select the right macro's and concatenate the default settings in `~/.local/share/groff/default.<macro package>`.

Keep in mind that `~` is currently set to my home folder `/home/user/` change this to suit your needs.
Furthermore, the default font I use is DejaVu, this does not come with groff so, once again, change this to suit your needs.

## nvim
neovim is my editor of choice.
The command Automkdoc, will execute the mkdoc command on your working file whenever you write `:w`.

Furthermore, any files called `bibliography.in` will be processed by `preconv` and output to `bibliography.groff`

C-b and C-i are set for bold and italic escape sequences.

### Syntax highlighting
mom escape sequences are colored as "Todo".

Fold syntax is set between occurrences of `.NEW_CHAPTER`.

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
  + .COLLATE will but put as the first line IF the chapter is not the first. This way, I can start a new document with the singular line `.NEW_CHAPER` and optionally prepend settings such as `TITLE` or `CHAPTER_STYLE`.
- CHAPTER_STYLE macro
  + used to change the numbers between `arabic` (default) and `roman`
  + $1 is the style
- REFERENCE_STYLE macro
  + used to set the refer style (see ## packages)
- miscellaneous settings

### me
- tt and ta for title pages
- miscellaneous settings

## packages
Packages are tmac files designed to be sourced (`.so`) into groff projects.
They must be placed in `~/.local/share/groff/packages` to be recognized.

### roman
The roman package registers 1000 roman numerals to be accessed programmatically.
The syntax is `\[ROMANx]` where `x` is your number of choice.
This Package is used in default.mom.

### chicago
Package here for redundancy, see [chicago-refer](https://github.com/user18130814200115-2/chicago-refer).
This Package is used in default.mom.
The .R1 .R2 block cannot be sourced though, it must be actually included in the final compiled document.

## Repo and releases
I will draft a release for every batch of changes with the exception of this README.
Actual changes to the workflow will increment the version number, bugfixes will increment the decimal.

In other words, if you use version 1.1, you can and should use 1.2 if it comes out.
However, version 2.1 might make changes to how everything works meaning that the same groff source file might compile differently.
