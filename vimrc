
" Debugging variables
map <leader>r :source $MYVIMRC <CR>
map <leader>s :reg +<CR>:reg *<CR>

let g:mapleader = ","

set updatetime=750

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


set relativenumber

syntax enable
set list

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
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80 | highlight ColorColumn ctermbg=238
" highlight Normal ctermbg=235
highlight EndOfBuffer ctermbg=238
highlight LineNr ctermbg=238 ctermfg=white

highlight SignColumn cterm=bold ctermbg=238 ctermfg=white
" highlight! link SignColumn LineNr
highlight GitGutterAdd    ctermfg=2 ctermbg=238
highlight GitGutterChange ctermfg=3 ctermbg=238
highlight GitGutterDelete ctermfg=3 ctermbg=238




" Load plugins
source ~/.plugins.vim




