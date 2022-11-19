source ~/.config/nvim/coc.vim

" Syntax Highlighting
if has("syntax")
    syntax on
endif

let mapleader=" "

inoremap jk <ESC>
inoremap {<CR> {<CR>}<ESC><S-o>
nmap <leader>w :wa<CR>
nmap <leader>q :q<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>/ <Plug>(easymotion-W)

xmap <D-_> gcc
nmap <C-_> gcc

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set nu rnu
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set clipboard=unnamedplus

nnoremap <leader>r <ESC>:!g++ -std=c++14 main.cpp -o main && ./main <CR>

call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

colorscheme gruvbox

highlight CocErrorFloat ctermfg=White guifg=#fffff 
