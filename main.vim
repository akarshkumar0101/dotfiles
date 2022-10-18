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
set list
set hlsearch
set expandtab " Use spaces instead of tabs
set smarttab " be smart when using tabs ;)
set shiftwidth=4 | set tabstop=4 " 1 tab == 4 spaces
set linebreak | set tw=500 " Linebreak on 500 characters
set autoindent | set smartindent
set wrap

" inoremap fj <Esc>
" inoremap jf <Esc>

" Search highlighted text (from: https://vim.fandom.com/wiki/Search_for_visually_selected_text)
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

autocmd FileType python nnoremap <buffer> <leader>r :echo "running"<CR>
" autocmd FileType markdown nmap <buffer> <leader>r <Plug>MarkdownPreviewToggle

" Download vim-plug and Auto-Install vim-plug
if has('nvim')
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
  let VIM_PLUG_DIR = '~/.config/nvim/autoload/plugged'
else
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
  let VIM_PLUG_DIR = '~/.vim/plugged'
endif






" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin(VIM_PLUG_DIR)

Plug 'junegunn/vim-plug' " Plugin manager

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } # Fuzzy finder
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs' " Parenthesis
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary' # For Comments

Plug 'tpope/vim-fugitive' # For Git commands?
Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] } " Directory tree
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

Plug 'rafi/awesome-vim-colorschemes'

" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'preservim/nerdcommenter'
" Plug 'ryanoasis/vim-devicons'
" Plug 'liuchengxu/vista.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'ycm-core/YouCompleteMe'
" Make sure to run python3 install.py --all inside ~/.vim/bundle/YouCompleteMe
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'kiteco/vim-plugin'
" Plug 'dense-analysis/ale'
" Plug 'Yggdroot/indentLine'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " Snippets

" Latex
" Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'https://github.com/vim-latex/vim-latex'

" Markdown
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Colorschemes
" Plug 'morhetz/gruvbox'
" Plug 'ajh17/Spacegray.vim'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'joshdick/onedark.vim'
" Plug 'arcticicestudio/nord-vim'

" Plug 'lilydjwg/colorizer'
" Following plugin is better but it requires golang, so nah.
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" set nocompatible
" let g:python_highlight_all = 1
" Plug 'sheerun/vim-polyglot'

call plug#end()

" let g:livepreview_previewer = 'xdg-open'

" The following is from
" https://github.com/erkrnt/awesome-streamerrc/blob/master/ThePrimeagen/init.vim
"
" let g:gruvbox_contrast_dark = 'hard'
" if exists('+termguicolors')
"     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" endif
" let g:gruvbox_invert_selection='0'

" colorscheme gruvbox
" set background=dark

" let g:pymode_rope = 1
" let g:pymode_rope_completion = 1
" set completeopt=menuone,noinsert
" let g:pymode_rope_organize_imports_bind = '<C-c>ro'
" let g:pymode_rope_autoimport=1

" let g:NERDTreeWinPos = "right"
" let NERDTreeShowHidden=0
" let NERDTreeIgnore = ['\.pyc$', '__pycache__']
" let g:NERDTreeWinSize=35
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"                 \ 'Modified'  :'~',
"                 \ 'Staged'    :'+',
"                 \ 'Untracked' :'*',
"                 \ 'Renamed'   :'➜',
"                 \ 'Unmerged'  :'=',
"                 \ 'Deleted'   :'-',
"                 \ 'Dirty'     :'x',
"                 \ 'Ignored'   :'i',
"                 \ 'Clean'     :'c',
"                 \ 'Unknown'   :'?',
"                 \ }


" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1
" let g:tex_conceal='abdmg'
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
" let g:space_vim_dark_background = 235
" colorscheme space-vim-dark
" colorscheme dracula
" colorscheme onedark
" colorscheme nord

" let g:airline_theme='bubblegum'
let g:airline_theme='dark'

" let g:gruvbox_transparent_bg = 1
" set background=dark    " Setting dark mode
" let g:gruvbox_number_column = 'fg'
" colorscheme gruvbox

" let g:spacegray_use_italics = 1
" let g:spacegray_underline_search = 1

" My Custom Color Configuration:
highlight Comment cterm=italic ctermfg=59
" highlight! link EndOfBuffer LineNr
" set colorcolumn=80 | highlight! link ColorColumn LineNr
" set colorcolumn=80 | highlight ColorColumn ctermbg=238

" For transparent background:
" hi Normal     ctermbg=NONE guibg=NONE
" hi LineNr     ctermbg=NONE guibg=NONE
" hi SignColumn ctermbg=NONE guibg=NONE

" highlight Normal ctermbg=235
" highlight EndOfBuffer ctermfg=238 ctermbg=238
" highlight LineNr ctermfg=white ctermbg=238

" highlight SignColumn ctermfg=white ctermbg=238
" highlight! link SignColumn LineNr
" highlight GitGutterAdd    ctermfg=2 ctermbg=238
" highlight GitGutterChange ctermfg=3 ctermbg=238
" highlight GitGutterDelete ctermfg=3 ctermbg=238

" highlight VertSplit ctermfg=238 ctermbg=245



