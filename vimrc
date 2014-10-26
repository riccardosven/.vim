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
Plugin 'mhinz/vim-startify'
Plugin 'ervandew/screen'
"Plugin 'wikitopian/hardmode'
"Plugin 'neilagabriel/vim-geeknote'
Plugin 'vimwiki/vimwiki'
Plugin 'flazz/vim-colorschemes'
"Plugin 'biskark/vim-ultimate-colorscheme-utility'
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
:set clipboard=unnamed
:set whichwrap=hl
:set columns=79
:set formatoptions+=t
:set timeoutlen=1000 ttimeoutlen=0 "Remove delays
:set textwidth=80
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
"Scroll with space!
"Would be awesome... hove to fix <S-Space>
":nnoremap <space> <C-d>
":nnoremap <S-PageUp> <C-u>
"Space opens new line above
":nnoremap <space> O<esc>j
"Space toggles fold
:nnoremap <space> za
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
:let g:tex_flavor='latex'
"}}}
" NERDTree{{{
:map <silent> <F2> :NERDTreeToggle<CR>
:imap <silent> <F2> <ESC>:NERDTreeToggle<CR>i
:let g:NERDTreeChDirMode=2
"}}}
"Undotree{{{
:map <silent> <F3> :UndotreeToggle<CR>
:imap <silent> <F3> <ESC>:UndotreeToggle<CR>i
"}}}
"Vim Startify{{{
let g:startify_custom_header =
      \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']
let g:startify_skiplist = [
            \ '\/usr\/share\/vim\/.*$',
            \ 'bundle/.*/doc',
            \ '\.aux$',
            \ '\.log$',
            \ '\.bbl$',
            \ '\.wiki$',
            \ 'vimrc$',
            \ ]

"}}}
" Vim Calendar{{{
:let g:calendar_google_calendar = 1
:let g:calendar_google_task = 1
"}}}
" Vim Airline{{{
:let g:airline_powerline_fonts = 1
:let g:airline_theme='murmur'
"}}}
"Visual mode moving{{{
":vnoremap J xjP`[v`]
":vnoremap K xkP`[v`]
":vnoremap H xhP`[v`]
":vnoremap L xlP`[v`]
"}}}
" Search{{{
:set hlsearch
:set incsearch
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap <silent> <esc><esc> :noh<cr>:match<cr>
:autocmd ColorScheme * :highlight Search ctermfg=black ctermbg=yellow cterm=NONE
:autocmd ColorScheme * :highlight Match ctermfg=black ctermbg=yellow cterm=NONE
"}}}
" make gvim behave like vim{{{
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
"}}}
" Colorschemes{{{
:autocmd ColorScheme * :highlight GitGutterAdd ctermbg=NONE ctermfg=green cterm=bold
:autocmd ColorScheme * :highlight GitGutterChange ctermbg=NONE ctermfg=yellow cterm=bold
:autocmd ColorScheme * :highlight GitGutterDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight GitGutterChangeDelete ctermbg=NONE ctermfg=red cterm=bold
:autocmd ColorScheme * :highlight SignColumn ctermbg=NONE
autocmd ColorScheme * :highlight SpellBad ctermfg=black ctermbg=green cterm=NONE
:colorscheme railscasts
"}}}
"Filetype Commands{{{
:augroup vim_group
:   autocmd!
:   autocmd FileType vim nnoremap <leader>c I"<esc>
:   autocmd FileType vim vnoremap <leader>c I"<esc>
:   autocmd FileType vim nnoremap <leader>C ^x<esc>
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
"Words to avoid{{{
highlight TechWordsToAvoid ctermbg=red ctermfg=white

function MatchTechWordsToAvoid()
      match TechWordsToAvoid /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\)\>/
endfunction

autocmd FileType tex call MatchTechWordsToAvoid()
autocmd BufWinEnter *.tex call MatchTechWordsToAvoid()
autocmd InsertEnter *.tex call MatchTechWordsToAvoid()
autocmd InsertLeave *.tex call MatchTechWordsToAvoid()
autocmd BufWinLeave *.tex call clearmatches()
"}}}
