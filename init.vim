call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'
Plug 'plasticboy/vim-markdown'
Plug 'digitaltoad/vim-pug'
Plug 'thaerkh/vim-workspace'
Plug 'sts10/vim-pink-moon'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'leafgarland/typescript-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

call plug#end()

"--- Colores y apariencia
syntax on
color pencil
set background=dark
let g:airline_theme = 'pencil'
set termguicolors

"-- Configuracion Emmet --
"redefinición de la tecla de activación
let g:user_emmet_leader_key=','

"-- Configuracion nerdTree --
"tecla de activación
nmap <C-n> :NERDTreeToggle<CR>

"-- Configuracion de easymotion --
"tecla de activación
map <Leader> <Plug>(easymotion-prefix)
map <Leader>f <Plug>(easymotion-bd-f)

map <Leader>w <Plug>(easymotion-overwin-w)

"-- Configuracion de Airline
let g:airline_poweline_fonts = 1
let g:airline_secion_z = ' %{strftime("%-I:%M %p")}'
let g:airline#extensions#wordcount#enabled = 1

"-- Configuracion de pencil
augroup pencil
        autocmd!
        autocmd FileType markdown,mkd call pencil#init()
        autocmd FileType text call pencil#init()
augroup END

"-- Configuraciones varias --
set tabstop=4 softtabstop=4 expandtab smarttab autoindent
set wrap breakindent
set number

"-- Configuraciones según tipo de archivo
"HTML, XML
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType pug setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xlm setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType jade setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2

"-- teclas mapeadas
let mapleader=","
