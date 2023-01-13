" -------------------------------------------------------------
" INITIALIZE
" -------------------------------------------------------------

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" -------------------------------------------------------------
" OPTIONS
" -------------------------------------------------------------

" 01 important
set nocompatible
" 02 moving around, searching and patterns
set incsearch
set ignorecase
set smartcase
" 03 tags
" 04 displaying text
set scrolloff=4
set nowrap
set sidescroll=1
set sidescrolloff=8
set list
set listchars=tab:>\ ,trail:-
set relativenumber
" 05 syntax, highlighting and spelling
set hlsearch
" 06 multiple windows
set laststatus=2
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%=
set statusline+=[%{&fileencoding}]
set statusline+=[%l/%L]
set splitbelow
set termwinsize=15x0
" 07 multiple tab pages
" 08 terminal
" 09 using the mouse
" 10 printing
" 11 messages and info
" 12 selecting text
" 13 editing text
" 14 tabs and indenting
set tabstop=4
set shiftwidth=0
set softtabstop=0
set expandtab
" 15 folding
" 16 diff mode
" 17 mapping
" 18 reading and writing files
set nowritebackup
set nobackup
" 19 the swap file
" 20 command line editing
set history=200
set wildmenu
" 21 executing external commands
" 22 running make and jumping to errors (quickfix)
" 23 language specific
" 24 multi-byte characters
" 25 various

" -------------------------------------------------------------
" KEY MAPS
" -------------------------------------------------------------

nnoremap <ESC><ESC> :nohlsearch<CR>

