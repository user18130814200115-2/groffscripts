function SetGroffOptions()
    set filetype=groff
    set spell
    syntax match escapeSeq "\\\*\[[A-z]*\]"
    highlight link escapeSeq Todo
    syntax region chapter start="^.NEW_CHAPTER" end="^$\n^.NEW_CHAPTER" fold transparent
    set foldmethod=syntax
    noremap zc :syntax region chapter start="^.NEW_CHAPTER" end="^$\n^.NEW_CHAPTER" fold transparent<cr>zc
endfunction

autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview

au BufRead,BufNewFile *.groff,*.mom,*.chap,*.we,*.me call SetGroffOptions()

au BufWritePost bibliography.in ! preconv % > %:p:h/bibliography.groff

command Automkdoc au BufWritePost * silent ! swaymsg exec "cd %:p:h && mkdoc %"
command Book silent ! cd %:p:h; preconv % > processing/%; cd processing && mkdoc main.mom && cp main.pdf ../

" Plugins Goyo and Limelight
let g:limelight_conceal_ctermfg = 'gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" see https://github.com/user18130814200115-2/nordtheme_tundra
source ~/.config/nvim/tundra.vim
