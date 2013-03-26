" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" Highlight search terms
set hlsearch

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Tab size and fixes double tab after { [ENTER]
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Makes gap after pressing { [ENTER]
let delimitMate_expand_cr = 1

" Show line numbers
set number

" When using 'c' shows a $ where the end is
set cpoptions+=$ 

" Can move around in blank spaces
" set virtualedit=all

" Incrementally match the search
set incsearch

" status line
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]]

" tell Vim to always put a status line in, even if there is only one
" " window
set laststatus=2

" Turn on spell checking
set spell

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Enable this option if you want the cursor to jump to the first detected
" error when saving or opening a file
let g:syntastic_auto_jump=1


" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'altercation/vim-colors-solarized'
Bundle 'comRaimondi/delimitMate'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'noahfrederick/Hemisu'
" Bundle 'tomasr/molokai'
" Bundle 'millermedeiros/vim-statline'


"for solarized
se t_Co=16
set background=dark
colorscheme solarized

