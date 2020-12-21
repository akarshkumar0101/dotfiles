
let g:mapleader = ","

" Debugging variables
noremap <leader>r :source $MYVIMRC <CR>
" noremap <leader>s :reg +<CR>:reg *<CR>

set updatetime=750

inoremap fj <Esc>
inoremap jf <Esc>

nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

set wildmenu

set relativenumber
set number

syntax enable
set list

set hlsearch

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab " Use spaces instead of tabs
set smarttab " be smart when using tabs ;)
set shiftwidth=4 | set tabstop=4 " 1 tab == 4 spaces
set linebreak | set tw=500 " Linebreak on 500 characters
set autoindent | set smartindent
set wrap



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert Mode Vertical Block Cursor
" From: https://stackoverflow.com/questions/16137623/setting-the-cursor-to-a-vertical-thin-line-in-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif


" Load plugins
source ~/.plugins.vim

