" -------------------
"  Plugin List
" -------------------
call plug#begin('~/.vim/plugged')
  " 界面美化
  Plug 'mhinz/vim-startify'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'

  " 界面增强
  Plug 'bling/vim-bufferline'
  Plug 'tpope/vim-fugitive'
  Plug 'Yggdroot/indentLine'

  " 代码补全
  Plug 'jiangmiao/auto-pairs'

  " 效率
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'scrooloose/nerdtree'
  Plug 'cskeeters/vim-smooth-scroll'
call plug#end()

" -------------------
"  Plugin Configs
" -------------------
" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#coc#enabled = 1

" nerdtree
" F3 开启关闭文件树
nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 默认打开NERDTree
let NERDTreeChDirMode=2                                         " 设置当前目录为nerdtree的起始目录
let NERDChristmasTree=1                                         " 使得窗口有更好看的效果
let NERDTreeMouseMode=1                                         " 双击鼠标左键打开文件
let NERDTreeWinSize=25                                          " 设置窗口宽度为25
let NERDTreeQuitOnOpen=1                                        " 打开一个文件时nerdtree分栏自动关闭
" 打开文件默认开启文件树
"autocmd VimEnter * NERDTree

" semshi
let g:python3_host_prog='/usr/bin/python3'

" -------------------
"  Shortcuts
" -------------------
" ctrl-j/k/l/h  分屏窗口移动 Normal mode
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
" 标签页跳转
noremap <C-L> <Esc>:tabn<CR>
noremap <C-H> <Esc>:tabp<CR>
" Semshi shortcuts
nmap <silent> <leader>rr :Semshi rename<CR>
nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>
nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>
nmap <silent> <leader>f :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>
nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>
nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>

" -------------------
"  Personal Settings
" -------------------
" Tabs and spaces
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

let mapleader=","

" Display
syntax on
set number
set enc=utf8
colorscheme gruvbox

" Search
set hlsearch
set incsearch

" Paste
set pastetoggle=<F10>init.vim

