## mkdoc
`mkdoc` is the shell script I use to compile my groff documents.

You simply give it a file with the syntax `<name>.<macro pagage>`, and it will select the right macro's and concatenate the default settings in `$XDG_TEMPLATES_DIR/<macro package>`.
Mkdoc will compile your groff file to `<name>.pdf`

## tys
`tys` is a shell script I use as a bootstrapper to start a new typesetting document or open an existing one.
The script is called with `$1` as the filename.
Then it will open `$1.mom` in nvim and `$1.pdf` in zathura.
Nvim will automatically start with `Automkdoc`, `Autowrite` and `Goyo` enabled.
Lastly, when nvim is closed, the zathura pdf window is also closed.

When opening a non-existing document,
`tys` will attempt to construct a title (based on the provided filename)
and assign a `MARKUP` based on the current working directory.

More information is included in the form of code comments.
