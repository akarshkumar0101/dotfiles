source $DOTFILES/vimrc

call plug#begin()

Plug 'junegunn/vim-plug' " Plugin manager

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'

" Plug 'tpope/vim-repeat' " Repeat plugin mappings with .
" Plug 'jiangmiao/auto-pairs' " Parenthesis
" Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary' " For Comments

" Plug 'vim-scripts/indentpython.vim'
" Plug 'jeetsukumaran/vim-pythonsense'

Plug 'tpope/vim-fugitive' " For Git commands?
Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] } " Directory tree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'sainnhe/everforest'
" Plug 'joshdick/onedark.vim'

" Plug 'tmhedberg/SimpylFold'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

call plug#end()

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>fw :Windows<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fhc :History:<CR>
nnoremap <leader>fhs :History/<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>f_ :Colors<CR>

noremap <leader>nn :NERDTreeToggle<cr>
noremap <leader>nn :NERDTreeTabsToggle<cr>
noremap <leader>nb :NERDTreeFromBookmark<Space>
noremap <leader>nf :NERDTreeFind<cr>

nnoremap <leader>/ :noh<CR>

nmap <C-_> gcc
imap <C-_> <C-o>gcc
vmap <C-_> gc


"syntax on
" colorscheme onedark

" set background=dark
" let g:everforest_disable_italic_comment = 1
" let g:everforest_background = 'soft'
" let g:everforest_better_performance = 1
" let g:airline_theme = 'everforest'
" colorscheme everforest


