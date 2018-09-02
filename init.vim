""" Default configs
set nu
set ruler
set clipboard=unnamedplus

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

let g:netrw_winsize = 25

set showcmd

""" Disabling arrow keys
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

packloadall
silent! helptags ALL

""" Installing plugins
call plug#begin()
 Plug 'ajh17/Spacegray.vim'
 Plug 'mxw/vim-jsx'
 Plug 'mattn/emmet-vim'
 Plug 'pangloss/vim-javascript'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'vim-airline/vim-airline'
call plug#end()

""" Options plugins
syntax on
colorscheme spacegray


let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

set path+=**                                                                    
set wildignore+=**/node_modules/** 

let b:ale_fixers = {'javascript': ['prettier']}
let b:ale_linters = {'javascript': ['eslint', 'flow']}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:airline#extensions#ale#enabled = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

