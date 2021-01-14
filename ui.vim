"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert Mode Vertical Block Cursor
" From: https://stackoverflow.com/questions/16137623/setting-the-cursor-to-a-vertical-thin-line-in-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if has("autocmd")
"   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"   au InsertEnter,InsertChange *
" \ if v:insertmode == 'i' |
" \   silent execute '!echo -ne "\e[6 q"' | redraw! |
" \ elseif v:insertmode == 'r' |
" \   silent execute '!echo -ne "\e[4 q"' | redraw! |
" \ endif
" au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
" endif

" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul

" set guicursor=i:ver100-iCursor



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" colorscheme archery
" colorscheme spacegray
" colorscheme iceberg
" colorscheme OceanicNext
colorscheme space-vim-dark
" colorscheme dracula
" colorscheme onedark
" colorscheme nord


" let g:gruvbox_transparent_bg = 1
" set background=dark    " Setting dark mode
" let g:gruvbox_number_column = 'fg'
" colorscheme gruvbox


" let g:spacegray_use_italics = 1
" let g:spacegray_underline_search = 1

" My Custom Color Configuration:
highlight Comment cterm=italic ctermfg=59
highlight! link EndOfBuffer LineNr
set colorcolumn=80 | highlight! link ColorColumn LineNr 
" set colorcolumn=80 | highlight ColorColumn ctermbg=238





" highlight Normal ctermbg=235
" highlight EndOfBuffer ctermfg=238 ctermbg=238
" highlight LineNr ctermfg=white ctermbg=238

" highlight SignColumn ctermfg=white ctermbg=238
" " highlight! link SignColumn LineNr
" highlight GitGutterAdd    ctermfg=2 ctermbg=238
" highlight GitGutterChange ctermfg=3 ctermbg=238
" highlight GitGutterDelete ctermfg=3 ctermbg=238

" highlight VertSplit ctermfg=238 ctermbg=245

