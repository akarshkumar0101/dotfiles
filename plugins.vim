" Download vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] }   
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }   

Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Plug 'ycm-core/YouCompleteMe'
" Make sure to run python3 install.py --all inside ~/.vim/bundle/YouCompleteMe
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'junegunn/vim-easy-align'

" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'https://github.com/vim-latex/vim-latex'
" Plug 'morhetz/gruvbox'

Plug 'rafi/awesome-vim-colorschemes'

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
" 
" let g:pymode_rope = 1
" let g:pymode_rope_completion = 1
" set completeopt=menuone,noinsert


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


nmap <C-_> gcc
vmap <C-_> gc


colorscheme archery
