## mkdoc
`mkdoc` is the shell script I use to compile my groff documents.

You simply give it a file with the syntax `<name>.<macro pagage>`, and it will select the right macro's and concatenate the default settings in `~/.local/share/groff/<macro package>`.
EG. For `test.mom`, the file `~/.local/share/groff/om` will be loaded.

Keep in mind that `~` is currently set to my home folder `/home/user/` change this to suit your needs.
Furthermore, the default font I use is DejaVu, this does not come with groff so, once again, change this to suit your needs.

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
