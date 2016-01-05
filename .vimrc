" Printed by sintax
syntax on

" Background color dark/ligth 
set background=dark
colorscheme desert

" Indentation by type of file detected
if has("autocmd")
filetype indent on
endif

" Highlight open/close of ()[]{} 
set showmatch

" TAB to spaces
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set autoindent
set softtabstop=4
set hlsearch

" Set columns and background limit
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2d2d2d
let &colorcolumn="80,".join(range(120,999),",")

set cursorline
set number
set ruler

set nocompatible
filetype on
filetype plugin on

map <C-o> :browse tabnew<CR>
map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <C-TAB> :tabnext<CR>
map <S-C-TAB> :tabprevious<CR>
map <F9> :NERDTreeToggle<CR>

autocmd BufRead,BufNewFile *.ino setlocal filetype=cpp
autocmd BufRead,BufNewFile *.scss setlocal filetype=sass
autocmd BufRead,BufNewFile *.html setlocal filetype=htmldjango
