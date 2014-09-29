"Be iMproved!
set nocompatible

""""""""""""""""""""""""""""""""""""""""
"Start Vundle config
""""""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"My bundles:
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/calendar.vim'
Plugin 'gerw/vim-latex-suite'
Plugin 'scrooloose/nerdtree'

call vundle#end()
:filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""
:syntax on

:colorscheme delek
:let mapleader = ","

"Open and edit vimrc, then source it at the end of the hacks
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

"Make tags and labeled tags
:inoremap <leader>nt <++>
:inoremap <leader>nT <++><esc>hi

"Do not select line numbers with the mouse
:set mouse=a

"Tabs
:set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
:set list listchars=tab:>-,trail:-,extends:>,eol:¬"

"Move swapfiles to a temp folder
:set dir =/tmp


"Surround selected word with double quotes
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

"Beggining of line with H
:nnoremap H ^
:nnoremap L $

:setlocal iskeyword+=:,-

":inoremap <buffer> { {}<++><esc>F}i
":inoremap <buffer> [ []<++><esc>F]i
":inoremap <buffer> { {}<esc>i
":inoremap <buffer> [ []<esc>i

:set nocompatible ruler laststatus=2 showcmd showmode number

:set relativenumber
:set incsearch hlsearch

"Abbreviations for common typos
:iabbrev adn and
:iabbrev hte the
:iabbrev teh the

"Scroll offset
":set scrolloff=20

"FileType Events
:autocmd FileType python :nnoremap <buffer> <localleader>c I#<esc>
:autocmd FileType python :nnoremap <buffer> <localleader>C ^x
:autocmd FileType python :set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

:autocmd FileType *.txt :set ts = 4 sts=4 sw=4 nolist
:autocmd FileType *.tex :set ts = 2 sts=2 sw=2

:autocmd FileType *.lua :set ts=4 sts=4 sw=4 et

":inoremap <buffer> ,b \begin{}<esc>i
":inoremap <buffer> ,e \end{}<esc>i
":inoremap <C-j> <esc>o
":inoremap <C-k> <esc>O

:autocmd FileType latex :nnoremap <buffer> <localleader>c I#<esc>
:autocmd FileType python :nnoremap <buffer> <localleader>C ^x

" :autocmd BufReadPost * :echom ">^.^< Hello Supervisor"

" VimLatex settings
:set grepprg=grep\ -nH\$*
:let g:tex_flavor='latex'

" map NERDTree command to F2
:map <F2> :NERDTreeToggle<CR>
:imap <F2> <ESC>:NERDTreeToggle<CR>i
:let g:NERDTreeChDirMode=2


:let g:calendar_google_calendar = 1
:let g:calendar_google_task = 1

:let g:airline_powerline_fonts = 1
:let g:airline_theme='murmur'
