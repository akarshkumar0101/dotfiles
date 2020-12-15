" Download vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
"
"
Plug 'airblade/vim-gitgutter'

" Plug 'junegunn/vim-easy-align'

" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Plug 'ycm-core/YouCompleteMe'
" Make sure to run python3 install.py --all inside ~/.vim/bundle/YouCompleteMe

" Plug 'morhetz/gruvbox'

" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Plug 'https://github.com/vim-latex/vim-latex'

" Initialize plugin system
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

" --- vim go (polyglot) settings.
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1
" let g:go_highlight_function_parameters = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_generate_tags = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_variable_declarations = 1
" let g:go_auto_sameids = 1

" colorscheme gruvbox
" set background=dark
" 
" let g:pymode_rope = 1
" let g:pymode_rope_completion = 1
" set completeopt=menuone,noinsert


let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
