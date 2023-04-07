call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'dense-analysis/ale'
Plug 'voldikss/vim-floaterm'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }



"Clang
Plug 'rhysd/vim-clang-format'

" Git
Plug 'tpope/vim-fugitive'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code commenter
Plug 'preservim/nerdcommenter'
"
" Syntax highlighting
Plug 'dense-analysis/ale'

" NERDTree
Plug 'scrooloose/nerdtree'
"
" Statusbar
Plug 'itchyny/lightline.vim'
"
" Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File finder
Plug 'vifm/vifm.vim'

" Theme
Plug 'morhetz/gruvbox'

" Tabs
Plug 'ap/vim-buftabline'
" Js
Plug 'pangloss/vim-javascript'


" Yc
Plug 'Valloric/YouCompleteMe'

"buscador de texto
Plug 'easymotion/vim-easymotion'

"mover entre archivos
Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"   " Configuración de YouCompleteMe
" let g:ycm_python_binary_path = '/data/data/com.termux/files/usr/bin/python'
" let g:ycm_semantic_triggers =  {'h': ['<', '>', '/']}
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview


let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode = 2
let g:conque_gdb=1
nmap <F12> :ClangFormat<CR>

" set background=dark
" colorscheme gruvbox
" let g:gruvbox_contrast_dark ="hard"

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>f :FloatermNew<CR>
nmap <Leader>fk :FloatermKill<CR>
