function SetGroffOptions()
    set filetype=groff
    set spell
    syntax match escapeSeq "\\\*\[[A-z]*\]"
    highlight link escapeSeq Todo
endfunction

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview

au BufRead,BufNewFile *.groff,*.mom,*.chap,*.we,*.me call SetGroffOptions()

au BufWritePost bibliography.in ! preconv % > %:p:h/bibliography.groff

command Automkdoc au BufWritePost * silent ! swaymsg exec "cd %:p:h && mkdoc %"
command Autowrite inoremap <CR> <ESC>:w<CR>a<CR>

" Plugins Goyo and Limelight
let g:limelight_conceal_ctermfg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" see https://github.com/user18130814200115-2/nordtheme_tundra
source ~/.config/nvim/tundra.vim

let g:limelight_conceal_ctermfg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
