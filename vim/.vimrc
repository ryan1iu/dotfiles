" 不兼容vi
set nocompatible
set term=screen-256color
"-----------
" 语法和缩进
" ----------

syntax on " 开启语法高亮提示
set showmatch " 当光标覆盖括号时展示与之匹配的括号

" 在当前活动窗口高亮当前行
augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

filetype plugin indent on " 开启文件类型检测
set autoindent " 设置自动缩进

"---------------
" 基础编辑项配置
"---------------

set shortmess+=I " 关闭启动消息
set nu " 数字行号
set rnu " 相对行号
set incsearch " 增量搜索（当键入字符时）
set hls " 高亮搜索结果
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " 换行符
set scrolloff=5 " 显示当前光标所在行上下文
" set noshowmode " 隐藏mode
set laststatus=2
set backspace=indent,eol,start " 允许backspace覆盖一切
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow 0 inserts
set lazyredraw " skip redrawing screen in some cases
set autochdir " 自动设置当前目录为最后打开文件的目录
set hidden " 允许自动隐藏编辑过的缓冲区
set history=8129 " more history
set nojoinspaces " 阻止在sentences中间插入两个空格
" 在格式化的时候用四个空格替代tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" 智能区分大小写搜索
set ignorecase
set smartcase

" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
" set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
set clipboard=unnamedplus " 将+寄存器与系统剪贴板相关联
set nofoldenable " 默认禁用折叠

"-----------
" 混杂的配置
" ----------

" unbind keys
map <C-a> <Nop>
map <C-x> <Nop>
nmap Q <Nop>

" 关掉提示音
set noerrorbells visualbell t_vb=

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" movement relative to display lines
nnoremap <silent> <Leader>d :call ToggleMovementByDisplayLines()<CR>
function SetMovementByDisplayLines()
    noremap <buffer> <silent> <expr> k v:count ? 'k' : 'gk'
    noremap <buffer> <silent> <expr> j v:count ? 'j' : 'gj'
    noremap <buffer> <silent> 0 g0
    noremap <buffer> <silent> $ g$
endfunction
function ToggleMovementByDisplayLines()
    if !exists('b:movement_by_display_lines')
        let b:movement_by_display_lines = 0
    endif
    if b:movement_by_display_lines
        let b:movement_by_display_lines = 0
        silent! nunmap <buffer> k
        silent! nunmap <buffer> j
        silent! nunmap <buffer> 0
        silent! nunmap <buffer> $
    else
        let b:movement_by_display_lines = 1
        call SetMovementByDisplayLines()
    endif
endfunction

"---------
" 插件配置
" --------

" ctrlp
nnoremap ; :CtrlPBuffer<CR>
let g:ctrlp_switch_buffer = 0
let g:ctrlp_show_hidden = 1
