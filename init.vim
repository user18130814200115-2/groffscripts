au BufRead,BufNewFile *.groff,*.mom,*.chap,*.we,*.me set filetype=groff | set spell

au BufWritePost bibliography.in ! preconv % > %:p:h/bibliography.groff

command Automkdoc au BufWritePost * silent ! swaymsg exec "cd %:p:h && mkdoc %"
