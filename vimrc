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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'szw/vim-dict'
Plugin 'mbbill/undotree'
Plugin 'kshenoy/vim-signature'
Plugin 'AndrewRadev/multichange.vim'
"Plugin 'matze/vim-move'
"Plugin 'jlanzarotta/bufexplorer'
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
:nnoremap <leader>" e<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' e<esc>a'<esc>hbi'<esc>lel
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
"Vim-Tmux Navigator{{{
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <down> :TmuxNavigateDown<cr>
nnoremap <silent> <up> :TmuxNavigateUp<cr>
nnoremap <silent> <right> :TmuxNavigateRight<cr>
nnoremap <silent> <left> :TmuxNavigatePrevious<cr>
"}}}
"Buffet {{{
:nnoremap <silent> ,be :Bufferlist<cr>
"}}}
" VimLatex{{{
:set grepprg=grep\ -nH\$*
"}}}
" NERDTree{{{
:map <F2> :NERDTreeToggle<CR>
:imap <F2> <ESC>:NERDTreeToggle<CR>i
:let g:NERDTreeChDirMode=2
"}}}
"Undotree{{{
:map <F3> :UndotreeToggle<CR>
:imap <F3> <ESC>:UndotreeToggle<CR>i
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
:autocmd ColorScheme * :highlight SignColumn ctermbg=NONE
:autocmd ColorScheme * :highlight SpellBad ctermfg=black ctermbg=green cterm=NONE
":colorscheme delek
":colorscheme koehler
:colorscheme pablo
"}}}
"Filetype Commands{{{
:augroup vim_group
:   autocmd!
:   autocmd FileType vim nnoremap <leader>c I" <esc>
:   autocmd FileType vim vnoremap <leader>c I" <esc>
:   autocmd FileType vim nnoremap <leader>C ^x <esc>
:augroup END
:augroup tex_group
:   autocmd!
:   autocmd FileType tex nnoremap <leader>c I% <esc>
:   autocmd FileType tex vnoremap <leader>c I% <esc>
:   autocmd FileType tex nnoremap <leader>C ^xx
:augroup END
:augroup matlab_group
:   autocmd!
:   autocmd FileType matlab nnoremap <leader>c I% <esc>
:   autocmd FileType matlab vnoremap <leader>c I% <esc>
:   autocmd FileType matlab nnoremap <leader>C ^xx
:augroup END
:augroup python_group
:   autocmd!
:   autocmd FileType python nnoremap <leader>c I# <esc>
:   autocmd FileType python vnoremap <leader>c I# <esc>
:   autocmd FileType python nnoremap <leader>C ^xx
:augroup END
"}}}
