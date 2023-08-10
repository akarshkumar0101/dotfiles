" Adapted from https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim

set nocompatible           " Ignore Vi compatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.
set relativenumber         " Relative line numbers.

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

colorscheme habamax        " colorscheme habamax

" ---------------------------------------- 
" set updatetime=750
" set wildmenu
" set smarttab " be smart when using tabs ;)
" set shiftwidth=4 | set tabstop=4 " 1 tab == 4 spaces
" set linebreak | set tw=500 " Linebreak on 500 characters
" set autoindent | set smartindent
" set wrap
" set foldmethod=indent
" set foldlevel=99

let g:mapleader = ","
" noremap <leader>r :source $MYVIMRC <CR>
" noremap <leader>s :reg +<CR>:reg *<CR>

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


autocmd FileType python nnoremap <buffer> <leader>r :echo "running"<CR>
" autocmd FileType markdown nmap <buffer> <leader>r <Plug>MarkdownPreviewToggle