" set leader key
let g:mapleader=" "


syntax enable				" Enable syntax highlight
set encoding=utf-8			" the encoding displayed
set cmdheight=2				" More space for displaying messages
set mouse=a				" Enable mouse
set splitbelow				" Horizontal splits will automatically be below
set splitright				" Vertical splits will automatically be to the right
set tabstop=4				" Insert 2 spaces for a tab
set shiftwidth=4			" Change the number of space character inserted for indentation
set smarttab				" Makes tabbing smarter will realize you have 2 vs 4
set expandtab				" Coverts tabs to spaces
set smartindent				" Makes indenting smart
set autoindent				
set number
set relativenumber
set cursorline				" Enable highlight all the current line
set laststatus=0            " Always display the status line
set clipboard=unnamedplus   " Copy to global clipboard
au! BufWritePost $MYVIMRC source %	" Auto source when writing to init.vim alternatively you can run :source $MYVIMRC

