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

## Gedit (GTK sourceview)
I have made a gtksourceview language speciication file for editors such as gedit.
It is called `groff.lang` and should be installed to
`/usr/share/gtksourceview-X/language-specs` for system-wide, or
`~/.local/share/gtksourceview-X/language-specs` for a per-user install.
Replace X in the above path with the version of gtksourceview you are running
(most recent is 4).
