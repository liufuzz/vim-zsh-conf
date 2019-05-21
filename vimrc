set number
set relativenumber
syntax on
set background=dark
colorscheme hybrid

let mapleader=','
inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>`^

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


Plug 'airblade/vim-gitgutter'
call plug#end()

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
	    \ '\.git$', '\.hg$', '\.svn$', '\.pyc$', '\.pyo$', '\.svn$', '\.swp$',
	    \ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.ropeproject$',
	    \ ]

let g:ctrlp_map = '<c-p>'
nmap ss <Plug>(easymotion-s2)

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

set updatetime=100
