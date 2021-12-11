# groffscripts
My personal collection of groff scripts

## mkdoc
mkdoc is the shell script I use to compile my groff documents.

You simply give it a file with the syntax `<name>.<macro pagage>`, and it will select the right macro's and concatenate the default settings in `~/.local/share/groff/default.<macro package>`.

Keep in mind that `~` is currently set to my home folder `/home/user/` change this to suit your needs.
Furthermore, the default font I use is DejaVu, this does not come with groff so, once again, change this to suit your needs.

## nvim
Neovim is my editor of choice.
The command `Automkdoc`, will execute the mkdoc command on your working file whenever you write `:w`.
`Autowrite` will save the file whenever the return key is pressed.

Furthermore, any files called `bibliography.enw` will be processed by `preconv` and output to `bibliography.groff`

### Syntax highlighting
mom escape sequences are coloured as "Todo".

Colours are set to tundra, see [nord-tundra](https://github.com/user18130814200115-2/nordtheme_tundra).

### Plugins
plugins I use are Goyo and Limelight.

## Groff
My Macros are built as a superset of the excellent `mom` macros.
### .MARKUP
Can be used to enable the default settings for a given style.
Universal among styles are heading styles, font size and footnote style (among others).
While the style `BOOK` uses recto-verso printing on A5 paper
and the style `ESSAY` loads the `REFER` settings and the `chicago` package.
`DRAFT` prints also on A5 with `printstyle TYPEWRITE`

### .PLUGIN
Loads a package as explained in ##packages.

### .NEW_CHAPTER
Starts a new chapter with a similar style to mom's `DOCTYPE CHAPTER`,
but using regular headings instead for more fine-tuned control.
The chapters are automatically numbered and can be manually modified by writing to the `chapter` register.
`NEW_CHAPTER` accepts an argument to name the chapter in addition to it's number.

#### .NEW_NAMED
Same as `NEW_CAHPER` but without the `Chapter X` string, useful for prologues, epilogues and alike.
`NEW_NAMED` of course accepts an argument to give the name.

#### .COVERPAGE
Turns mom's DOCCOVER into a cover page and delays pagination.

#### .DEDICATION
Generates a largely empty, unnumbered page with a block of text in the centre.

#### .BOLD/.ITALIC
Prints $1 as bold/italic and follows with $2 immediately in roman font.

#### .REFER
Loads my default settings for the REFER preprocessor including sorting, brackets and the database file.
This macro is capped by `.MARKUP ESSAY`

#### .REFERENCES
Adds a bibliography page where references are printed out.
A title may be given as an argument, the default of 'References' is taken otherwise.

#### .FOLLOW
Moves the cursor back the width of a space in `PT_SIZE 12`.
Used previously to append periods and commas after .BOLD and .ITALIC.




### me [deprecated]
For the `me` macros I also once made a small superset.
This set is however no longer maintained.
- tt and ta for title pages
- miscellaneous settings

## packages
Packages are tmac files designed to be sourced into groff projects.
The default.mom files includes a macro to load these packages called `PLUGIN`.
They must be placed in `~/.local/share/groff/packages` to be recognized.

### roman
The roman package registers 1000 Roman numerals to be accessed programmatically.
The syntax is `\[ROMANx]` where `x` is your number of choice.
This Package is used in default.mom.

### chicago
Package here for redundancy, see [chicago-refer](https://github.com/user18130814200115-2/chicago-refer).
This Package is used in default.mom.
The .R1 .R2 block cannot be sourced though, it must be actually included in the final compiled document.

### dropcap
There are references to a dropcap macro, I did not make this myself.
It can be found [here](https://lists.gnu.org/archive/html/groff/2005-03/msg00133.html)

## Repo and releases
I will draft a release for every batch of changes with the exception of this README.
Actual changes to the workflow will increment the version number, bugfixes will increment the decimal.

In other words, if you use version 1.1, you can and should use 1.2 if it comes out.
However, version 2.1 might make changes to how everything works, meaning that the same groff source file might compile differently.
