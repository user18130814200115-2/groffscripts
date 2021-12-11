function SetGroffOptions()
    set filetype=groff
    set spell
    syntax match escapeSeq "\\\*\[[A-z]*\]"
    highlight link escapeSeq Todo
    set foldmarker=.NEW_CHAPTER,.END_CHAPTER
    set foldmethod=marker
    set scrolloff=99
    Limelight
endfunction

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview

au BufRead,BufNewFile *.groff,*.mom call SetGroffOptions()

au BufWritePost bibliography.in ! preconv % > %:p:h/bibliography.groff

command Automkdoc au BufWritePost * silent ! riverctl spawn "cd %:p:h && mkdoc %"
command Autowrite inoremap <CR> <C-o>:w<CR><CR>

" Plugins Goyo and Limelight
let g:limelight_conceal_ctermfg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" see https://github.com/user18130814200115-2/nordtheme_tundra
source ~/.config/nvim/tundra.vim

let g:limelight_conceal_ctermfg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight! | q
