source $HOME/.config/nvim/plug-config/coc.vim
set encoding=utf-8
set number relativenumber
set scrolloff=11
set backspace=indent,eol,start
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set nocompatible

let mapleader=','
let g:user_emmet_leader_key=','

call plug#begin('~/.vim/plugged')

"Theme
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
"Auto Pair
Plug 'jiangmiao/auto-pairs'

"Commenter
Plug 'preservim/nerdcommenter'

"Css colorizer
Plug 'norcalli/nvim-colorizer.lua'

"Tabs
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

"Snippets
"Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

"File explorer
Plug 'preservim/nerdtree'

"Language pack
Plug 'sheerun/vim-polyglot'

"Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Html autocomplete with <C_y> + leader key
Plug 'mattn/emmet-vim'


call plug#end()




syntax on
colorscheme onedark

let g:airline_theme='onedark'

if(has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

"NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
