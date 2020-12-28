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

Plug 'junegunn/vim-plug'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } | Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
" Parenthesis
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
" Git
Plug 'tpope/vim-fugitive'
" Comments
Plug 'tpope/vim-commentary'
" Plug 'preservim/nerdcommenter'
" NERDTree
Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
" Airline
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" GitGutter
Plug 'airblade/vim-gitgutter'

Plug 'liuchengxu/vista.vim'

" Auto completion and linting

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'ycm-core/YouCompleteMe'
" Make sure to run python3 install.py --all inside ~/.vim/bundle/YouCompleteMe
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'kiteco/vim-plugin'

" Plug 'dense-analysis/ale'

" Indentation
Plug 'Yggdroot/indentLine'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Latex
Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'https://github.com/vim-latex/vim-latex'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'morhetz/gruvbox'
" Plug 'ajh17/Spacegray.vim'

" set nocompatible
let g:python_highlight_all = 1
Plug 'sheerun/vim-polyglot'

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



let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
" let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
noremap <leader>nn :NERDTreeToggle<cr>
noremap <leader>nn :NERDTreeTabsToggle<cr>
noremap <leader>nb :NERDTreeFromBookmark<Space>
noremap <leader>nf :NERDTreeFind<cr>
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'~',
                \ 'Staged'    :'+',
                \ 'Untracked' :'*',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'=',
                \ 'Deleted'   :'-',
                \ 'Dirty'     :'x',
                \ 'Ignored'   :'i',
                \ 'Clean'     :'c',
                \ 'Unknown'   :'?',
                \ }


let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
