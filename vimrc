" vim:fdm=marker
"Vundle {{{
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"My plugins. Just add a git repository and then use
" :BundleInstall to install new plugins
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/calendar.vim'
Plugin 'gerw/vim-latex-suite'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-expand-region'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
:filetype plugin indent on
"}}}
" Editor{{{
:syntax on
:let mapleader = ","
:set scrolloff=10
:set dir =/tmp "Move swapfiles to a temp folder
:set mouse=a "Do not select line numbers with the mouse
:set cryptmethod=blowfish
:setlocal iskeyword+=:,-
:set nocompatible ruler laststatus=2 showcmd showmode number
:set relativenumber
"}}}
" Vimrc{{{
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
"}}}
"Keyboard Shortcuts{{{
"Make tags and labeled tags
:inoremap <leader>nt <++>
:inoremap <leader>nT <++><esc>hi
"Surround selected word with double quotes
:nnoremap <leader>" viW<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viW<esc>a'<esc>hbi'<esc>lel
"Beggining of line with H
:nnoremap H ^
:nnoremap L $
"}}}
"Tabs and linebreaks{{{
:set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
:set list listchars=tab:>-,trail:-,extends:>,precedes:<,eol:¬
:set smartindent
:set showbreak=>\
:set breakindent
:set linebreak
"}}}
"Abbreviations{{{
:iabbrev adn and
:iabbrev hte the
:iabbrev teh the
:iabbrev tihs this
"}}}
"Region Expansion{{{
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"}}}
" VimLatex{{{
:set grepprg=grep\ -nH\$*
"}}}
" NERDTree{{{
:map <F2> :NERDTreeToggle<CR>
:imap <F2> <ESC>:NERDTreeToggle<CR>i
:let g:NERDTreeChDirMode=2
"}}}
" Vim Calendar{{{
:let g:calendar_google_calendar = 1
:let g:calendar_google_task = 1
"}}}
" Vim Airline{{{
:let g:airline_powerline_fonts = 1
:let g:airline_theme='murmur'
"}}}
" Search{{{
:set hlsearch
:set incsearch
:nnoremap n nzz
:nnoremap N nzz
:nnoremap <silent> <esc><esc> :noh<cr>:match<cr>
:autocmd ColorScheme * :highlight Search ctermfg=black ctermbg=yellow cterm=NONE
:autocmd ColorScheme * :highlight Match ctermfg=black ctermbg=yellow cterm=NONE
"}}}
" Colorschemes{{{
:autocmd ColorScheme * :highlight GitGutterAdd ctermbg=NONE ctermfg=green cterm=bold
:autocmd ColorScheme * :highlight GitGutterChange ctermbg=NONE ctermfg=yellow cterm=bold
:autocmd ColorScheme * :highlight GitGutterDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight GitGutterChangeDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight SpellBad ctermfg=black ctermbg=green cterm=NONE
":colorscheme delek
":colorscheme koehler
:colorscheme pablo
"}}}
