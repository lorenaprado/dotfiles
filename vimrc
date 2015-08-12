" ================ General Config =================

" Choose no comatibility with legacy vi
set nocompatible
set encoding=utf-8 
set shell=zsh

" ==================== Plugins ====================
" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' 

Plugin 'tell-k/vim-autopep8'

Plugin 'altercation/vim-colors-solarized'

" Plugin 'bling/vim-airline'

" All of your plugins must be addewd before the following line
call vundle#end() " required
filetype plugin indent on " required

" ==================== Search ====================

" Search as characters are entered
set incsearch 
" Highlight matches
set hlsearch
" Ignore case when searching...
set ignorecase
" ...unless we type a capital
set smartcase

" ==================== Identation ===================

" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in tab when editing
set softtabstop=4
" Turn <TAB>s into spaces
set expandtab

" ==================== Colors ======================

"
set term=xterm-256color
" Turn on highlight text
syntax enable
set background=dark
colorscheme solarized
highlight LineNr ctermfg=darkgray
" Highlight current line
set cursorline
set t_Co=256

" ==================== UI Config ====================

" Shown column to left with number line
set number
" Visual autocomplete for command menu
set wildmenu
" Show the line/columnn number where the cursor is
set ruler
" Enable the use of the mouse 
set mouse=a

" ==================== Autocmds =====================

" Auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

" ==================== Folding ======================

" Fold based on markers
set foldmethod=expr
" Start with fold level of 1
set foldlevelstart=10
