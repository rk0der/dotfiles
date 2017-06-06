let g:cache_dir = expand('~/.cache/nvim')
if !isdirectory(g:cache_dir)
  execute '!mkdir -p ' . g:cache_dir
endif
let g:conf_dir = expand('~/.config/nvim')

"execute 'set runtimepath^=' . g:conf_dir

let s:init_dein_path = g:conf_dir . '/init_dein.vim'
if filereadable(s:init_dein_path)
  execute 'source ' . s:init_dein_path
endif

let s:init_tab_path = g:conf_dir . '/init_tab.vim'
if filereadable(s:init_tab_path)
  execute 'source ' . s:init_tab_path
endif

"### Feature
" set noswapfile
set clipboard=unnamedplus
set timeoutlen=500
" set nobackup

"### Edit
set number
set tabstop=2
set shiftwidth=2
set expandtab

"### Search
set ignorecase
set smartcase
set wrapscan