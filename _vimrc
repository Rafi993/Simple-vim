set nocompatible              " be iMproved, required
filetype plugin indent on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plugins to be used
Plugin 'VundleVim/Vundle.vim'

Plugin 'tstelzer/welpe.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'burnettk/vim-angular'
Plugin 'moll/vim-node'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Put your non-Plugin stuff after this line

" activates filetype detection
filetype plugin indent on

" activates syntax highlighting among other things
syntax on

" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

" just hit backspace without this one and
" see for yourself
set backspace=indent,eol,start

set number
set laststatus=2
set statusline=%f "tail of filename     

colorscheme welpe
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch          " Highlight search terms
set mouse=a
set nu                " show line numbers   
set clipboard=unnamed " enable copy to clipboard

"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
set guifont=Monospace:h20

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
set  guifont=Lucida_Console:h12:cANSI

"Remove Menubar and Toolbar
set guioptions -=m 
set guioptions -=T
set guioptions -=r
set guioptions -=R
set guioptions -=l
set guioptions -=L

" to enable full screen download dll from http://www.vim.org/scripts/script.php?script_id=2596
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

"enable smart tab for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0


