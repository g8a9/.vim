let mapleader = "-"

" Plugin Vim-plug
call plug#begin('~/.vim/plugins')
 
Plug 'morhetz/gruvbox'          " colorscheme
Plug 'junegunn/seoul256.vim'    " colorscheme
Plug 'itchyny/lightline.vim'    " status bar inferiore

call plug#end()

" Stile
set laststatus=2                " display statusbar
set noshowmode                  " nasconde lo stato nell'ultima barra inferiore
let g:lightline = { 'colorscheme': 'seoul256' }

filetype on
syntax on

let g:seoul256_background = 234
colo seoul256    
"colorscheme gruvbox
"set background=dark     " has also light version

set number              " line numbering
set numberwidth=4

" Tab e indentazione
set textwidth=69
set expandtab           " tab come sequenza di spazi
set softtabstop=4
set tabstop=4           " dimensione tab
set shiftwidth=4        " dimensione di un'indentazione
set smartindent
set autoindent
set fileformat=unix

" Funzioni
function! TNumber()     " ! override di funzioni con lo stesso nome
	set number!
endfunc

" Mapping
map <leader>n :call TNumber()<cr>
map <leader>s :source ~/.vimrc<cr>

" Altro

set hlsearch            " evidenzia le parole trovate 
