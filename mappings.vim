" inoremap fj <Esc>
" inoremap jf <Esc>

nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Make copy to end of the line work
nnoremap Y y$

" naviagte 'display lines' instead of hard lines
" from: http://stackoverflow.com/a/8347066
noremap <silent> <Up> gk
imap <silent> <Up> <C-o>gk
noremap <silent> <Down> gj
imap <silent> <Down> <C-o>gj
noremap <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
noremap <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clipboard Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
" Don't want this because it will copy dd command into system clipboard
" set clipboard=unnamedplus 
noremap <leader>y "+y | map <leader>Y "+Y
noremap <leader>p "+p | map <leader>P "+P
noremap <leader>d "+d | map <leader>D "+D
noremap <leader>x "+x | map <leader>X "+X


nnoremap <leader>f :Files<CR>

nnoremap <leader>/ :noh<CR>

nmap <C-_> gcc
vmap <C-_> gc


autocmd FileType python nnoremap <buffer> <leader>r :echo "running"<CR>
autocmd FileType markdown nmap <buffer> <leader>r <Plug>MarkdownPreviewToggle


