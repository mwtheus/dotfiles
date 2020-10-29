syntax on

set wrap linebreak nolist
set nocompatible
set number showmatch
set tabstop=2 expandtab autoindent
set colorcolumn=80 textwidth=80
set mouse=a
set backspace=indent,eol,start
set matchpairs+=<:>
set ignorecase

hi ColorColumns ctermbg=232

:autocmd BufReadPre * :silent !command xscripts --resize 80 84
:autocmd BufWritePost ~/.Xresources :silent !command xscripts --visual

map <C-n> :NERDTreeToggle<CR>
