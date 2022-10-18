" Akarsh's Vim Config

let g:mapleader = ","
" Debugging variables
" noremap <leader>r :source $MYVIMRC <CR>
" noremap <leader>s :reg +<CR>:reg *<CR>
"
syntax enable

set cursorline
" set cursorcolumn
set updatetime=750
set wildmenu
set relativenumber
set number
" set list
set hlsearch
set expandtab " Use spaces instead of tabs
set smarttab " be smart when using tabs ;)
set shiftwidth=4 | set tabstop=4 " 1 tab == 4 spaces
set linebreak | set tw=500 " Linebreak on 500 characters
set autoindent | set smartindent
set wrap
set foldmethod=indent
set foldlevel=99


" inoremap fj <Esc>
" inoremap jf <Esc>
"
" Toggle fold
nnoremap <space> za

vnoremap / <Esc>/\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l
vnoremap ? <Esc>?\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l

" Search for highlighted text (from: https://vim.fandom.com/wiki/Search_for_visually_selected_text)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

nnoremap <C-n> :tabnext<CR>
nnoremap <C-p> :tabprevious<CR>
nnoremap <A-Left> :tabmove -1<CR>
nnoremap <A-Right> :tabmove +1<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Make copy to end of the line work
noremap Y y$
" nnoremap V v$
" nnoremap vv V

" Add in-line object to select line without newline
xnoremap il ^o$h
onoremap il :normal vil<CR>

" naviagte 'display lines' instead of hard lines
" from: http://stackoverflow.com/a/8347066
" noremap <silent> <Up> gk
" imap <silent> <Up> <C-o>gk
" noremap <silent> <Down> gj
" imap <silent> <Down> <C-o>gj
" noremap <silent> <home> g<home>
" imap <silent> <home> <C-o>g<home>
" noremap <silent> <End> g<End>
" imap <silent> <End> <C-o>g<End>

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

autocmd FileType python nnoremap <buffer> <leader>r :echo "running"<CR>
" autocmd FileType markdown nmap <buffer> <leader>r <Plug>MarkdownPreviewToggle

" if has('nvim')
"   if empty(glob('~/.config/nvim/autoload/plug.vim'))
"     silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   endif
"   let VIM_PLUG_DIR = '~/.config/nvim/autoload/plugged'
" else
"   if empty(glob('~/.vim/autoload/plug.vim'))
"     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   endif
"   let VIM_PLUG_DIR = '~/.vim/plugged'
" endif

call plug#begin()

Plug 'junegunn/vim-plug' " Plugin manager

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs' " Parenthesis
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary' " For Comments

Plug 'vim-scripts/indentpython.vim'
Plug 'jeetsukumaran/vim-pythonsense'

Plug 'tpope/vim-fugitive' " For Git commands?
Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] } " Directory tree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

Plug 'rafi/awesome-vim-colorschemes'
Plug 'sainnhe/everforest'
Plug 'joshdick/onedark.vim'

Plug 'tmhedberg/SimpylFold'

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

set background=dark
let g:everforest_disable_italic_comment = 1
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
let g:airline_theme = 'everforest'
colorscheme everforest








