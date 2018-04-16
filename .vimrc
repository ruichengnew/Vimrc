set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on 

":PluginInstall         -install plugins
":PluginClean 		-comfirms removal of unused plugins
":PluginSearch foo	-searches for foo
":PluginList		-lists configured plugins

"基本设置
set nu
set hls
set incsearch
set backspace=2

iabbrev ,b import ipdb; ipdb.set_trace()

set foldmethod=indent
set nofoldenable

"颜色
syntax enable
set background=dark
colorscheme solarized

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3

"nerdtree
map <f2> : NERDTreeToggle<CR>
let NERDTreeSortHiddenFirst=1
let NERDTreeMouseMode=1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=30

"YCM
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
