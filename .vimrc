set scrolloff=8
set number 
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ruler
set list
set nohlsearch
set incsearch
set bg=dark

" set clipboard=unnamedplus
" set history=1000
" set mouse=

set showcmd
set ai
set lbr
set timeoutlen=0

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'sbdchd/neoformat'
call plug#end()


" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" NERDTree relative line number
:let g:NERDTreeShowLineNumbers=1
:autocmd BufEnter NERD_* setlocal rnu


let mapleader = " "

nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <C-p> :GFiles<cr>
nnoremap <leader>pf :Files<CR>

nnoremap <C-b> :NERDTreeToggle<CR>

" let g:neoformat_enabled_javascript = ['prettier']
" let g:neoformat_enabled_typescript = ['prettier']

vnoremap <leader>p "_dP"
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

