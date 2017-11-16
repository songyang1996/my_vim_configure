set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
"
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"python 自动缩进
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 | 
			\ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2 |

highlight BadWhitespace ctermbg=red guibg=darkred

"标识空白字符
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"代码折叠
"Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let python_highlight_all=1
syntax on

"显示行号
set nu

"补全窗口自动关闭
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
   
"主题配置
colorscheme molokai
set t_Co=256

"nerdtree
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeIgnore=['\.pyc$', '\~$']
map <F2> :NERDTreeToggle<CR>


"ycm
let g:ycm_server_python_interpreter='/usr/local/python2.7/bin'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"插件
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'








