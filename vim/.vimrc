set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" initialize plugins using Vundle
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'avakhov/vim-yaml'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dikiaap/minimalist'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'rodjek/vim-puppet'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()

" Nerdtree Settings
"autocmd VimEnter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>

" change tabs to spaces
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" show line number
set nu

" for when I type really fast
cab W w
cab Q q
cab Qa qa
cab QA qa
cab Wq wq
cab WQ wq
cab Wqa wqa
cab WQa wqa
cab WQA wqa

" syntax highlight, colors
syntax on
set background=dark
set termguicolors

colorscheme vim-monokai-tasty

" Jenkinsfile VIM syntax highlighting
au BufNewFile,BufRead Jenkinsfile setf groovy
