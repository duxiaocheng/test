" make vim more vi-compatible
" avoid left-right up-down keyboard changing to ABCD
set nocompatible

" configure backspace so it acts as it should act
set backspace=indent,eol,start

" enable line number
set number

" set command history number
set history=1000

" enable syntax highlight
syntax on

" use mouse everywhere
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use spaces instead of tabs
set expandtab

" be smart when using tabs
set smarttab
set autoindent
set smartindent

" 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" always show current position
set ruler

" always show(=2)/close(=1 default) the status line
set laststatus=1

" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" highlight search results
set hlsearch

" makes search act like search in modern browsers
set incsearch

" show matching brackers when text indicator is over them
set showmatch

" how many tenths of a sencond to blink when matching brackets
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" zR to open all collapsed codes, 
" zo to open this line and zc to collapsed code
set foldmethod=syntax
" default no code collapsed
set foldlevel=9999

" highlight the cursor line and column
"set cursorline
"set cursorcolumn

" enble filetype plugins
filetype on

au BufNewFile,BufRead *.mpch set filetype=chill
au BufNewFile,BufRead *.chh set filetype=chill

" step1: mkdir -p ~/.vim/bundle
" step2: open vim and run command :PluginInstall

" vundle config
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
filetype plugin indent on
Bundle 'Valloric/YouCompleteMe'

" YouCompleteMe
" ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 " Do not ask when starting vim
let g:ycm_autoclose_preview_window_after_completion=1

let mapleader = ','
nnoremap <F4> :YcmDiags<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

filetype plugin indent on

