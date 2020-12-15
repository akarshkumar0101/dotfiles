let mapleader = ","
let g:mapleader = ","

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>r :source ~/.vimrc <CR>

set relativenumber

" syntax on

set list

" d and x delete, not cut
" from: https://github.com/pazams/d-is-for-delete/blob/master/d-is-for-delete-shared-clipboard
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

" leader d copies to the system clipboard
if has('unnamedplus') " system clipboard is default clipboard
  set clipboard=unnamed,unnamedplus
  nnoremap <leader>d "+d
  nnoremap <leader>D "+D
  vnoremap <leader>d "+d
else
  set clipboard=unnamed
  nnoremap <leader>d "*d
  nnoremap <leader>D "*D
  vnoremap <leader>d "*d
endif

" Load plugins
source ~/.plugins.vim




