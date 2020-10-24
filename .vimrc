syntax on

set nocompatible
set number showmatch
set tabstop=2 expandtab autoindent
set colorcolumn=80 textwidth=80
set mouse=a
set backspace=indent,eol,start
set matchpairs+=<:>
set ignorecase

hi ColorColumns ctermbg=232

:autocmd BufWritePost ~/.Xresources !command xscripts -r
