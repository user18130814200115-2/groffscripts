set number relativenumber
set shiftwidth=4

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview

au BufRead,BufNewFile *.md set spell
au BufRead,BufNewFile *.groff,*.mom,*.chap,*.we,*.me set filetype=groff | set spell

au BufWritePost bibliography.in ! preconv % > %:p:h/bibliography.groff

command Automkdoc au BufWritePost * silent ! swaymsg exec "cd %:p:h && mkdoc %"
command Book silent ! cd %:p:h; preconv % > processing/%; cd processing && mkdoc main.mom && cp main.pdf ../

map Y "+y

iabbrev daodejing Dàodé Jīng
iabbrev dao Dào

call plug#begin('~/.local/share/nvim/site/autoload/plugged')
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()
