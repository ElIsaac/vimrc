" Configuración de plugins con Vim-Plug 
call plug#begin() 
" Plugins básicos 
Plug 'junegunn/vim-easy-align' 
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'dense-analysis/ale'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'pangloss/vim-javascript'
Plug 'sirver/ultisnips'
Plug 'christoomey/vim-tmux-navigator'

" Temas
Plug 'fcpg/vim-orbital'
Plug 'nanotech/jellybeans.vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

" Plugins para la IDE
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-buftabline'
Plug 'vifm/vifm.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ElIsaac/compiler-cpp-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-repeat'
" Configuración final de Vim-Plug
call plug#end()

" Configuración general del editor
set number
let mapleader=" "
set background=dark
colorscheme murphy
let g:gruvbox_contrast_dark ="hard"

" Configuración de YouCompleteMe 
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt-=preview

" Configuración de NERDTree
let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen=1
map <Leader>nt :NERDTreeFind<CR>

" Configuración de Floaterm
nmap <Leader>f :FloatermNew<CR>
nmap <Leader>ft :FloatermToggle<CR>
nmap <Leader>fn :FloatermNext<CR>
nmap <Leader>fp :FloatermPrev<CR>
nmap <Leader>fk :FloatermKill<CR>

" Configuración de atajos de teclado
nmap <F12> :ClangFormat<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><
map <Leader>j :+10<CR>
map <Leader>k  :-10<CR>

" Configuración de la barra de estado
set laststatus=2

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

map <Leader>bn :bNext<CR>
map <Leader>co :CompilerCPP<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
