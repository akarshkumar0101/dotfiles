let g:mapleader = ","
" Debugging variables
noremap <leader>r :source $MYVIMRC <CR>
" noremap <leader>s :reg +<CR>:reg *<CR>

" Load other sources
let g:nvim_config_root = '~/.config/nvim'
let g:config_file_list = ['options.vim', 'mappings.vim', 'plugins.vim', 'ui.vim'] ", variables.vim, autocommands.vim]
for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor
