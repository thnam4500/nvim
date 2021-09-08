call plug#begin('~/.vim/plugged')
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " One dark 
    Plug 'joshdick/onedark.vim'
    
    " Nerdtree
    Plug 'preservim/nerdtree'

    " Snippet
    Plug 'honza/vim-snippets'
    
    " Status bar
    Plug   'vim-airline/vim-airline'
    Plug   'vim-airline/vim-airline-themes'

    " Debugger
    Plug   'puremourning/vimspector'

call plug#end()
