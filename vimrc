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

:let mapleader = ","

"Open and edit vimrc, then source it at the end of the hacks
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

"Make tags and labeled tags
:inoremap <leader>nt <++>
:inoremap <leader>nT <++><esc>hi

"Do not select line numbers with the mouse
:set mouse=a

"Tabs and linereaks
:set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
:set list listchars=tab:>-,trail:-,extends:>,precedes:<,eol:¬
:set smartindent
:set showbreak=>\
:set breakindent
:set linebreak

"Move swapfiles to a temp folder
:set dir =/tmp

"Surround selected word with double quotes
:nnoremap <leader>" viW<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viW<esc>a'<esc>hbi'<esc>lel

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

"Abbreviations for common typos
:iabbrev adn and
:iabbrev hte the
:iabbrev teh the

"Scroll offset
:set scrolloff=10

":inoremap <buffer> ,b \begin{}<esc>i
":inoremap <buffer> ,e \end{}<esc>i
":inoremap <C-j> <esc>o
":inoremap <C-k> <esc>O

" :autocmd BufReadPost * :echom ">^.^< Hello Supervisor"

" VimLatex settings
:set grepprg=grep\ -nH\$*

" map NERDTree command to F2
:map <F2> :NERDTreeToggle<CR>
:imap <F2> <ESC>:NERDTreeToggle<CR>i
:let g:NERDTreeChDirMode=2


:let g:calendar_google_calendar = 1
:let g:calendar_google_task = 1

:let g:airline_powerline_fonts = 1
:let g:airline_theme='murmur'

" Search configurations ----------------------------------------------
:set hlsearch
:set incsearch
:nnoremap n nzz
:nnoremap N nzz
:nnoremap <silent> <esc><esc> :noh<cr>:match<cr>
:autocmd ColorScheme * :highlight Search ctermfg=black ctermbg=yellow cterm=NONE
:autocmd ColorScheme * :highlight Match ctermfg=black ctermbg=yellow cterm=NONE

" Colorschemes  ------------------------------------------------------

:autocmd ColorScheme * :highlight GitGutterAdd ctermbg=NONE ctermfg=green cterm=bold
:autocmd ColorScheme * :highlight GitGutterChange ctermbg=NONE ctermfg=yellow cterm=bold
:autocmd ColorScheme * :highlight GitGutterDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight GitGutterChangeDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight SpellBad ctermfg=black ctermbg=green cterm=NONE
:colorscheme delek
