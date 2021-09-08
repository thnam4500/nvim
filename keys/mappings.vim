let mapleader = " "

inoremap jk <Esc>
inoremap kj <Esc>
inoremap KJ <Esc>
inoremap JK <Esc>


" Better tabbing
vnoremap < <gv
vnoremap > >gv


" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader key

" Move to first letter and last letter

map <leader>h ^
map <leader>l $

" Split line from current position
map <leader>o i<enter><esc>


" Change tabbing
nmap <leader>t :buffer 1
