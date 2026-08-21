"============================================================
" 常用 Vim 配置
"============================================================

" 关闭兼容模式，启用更现代的 Vim 行为
set nocompatible

" 启用语法高亮
syntax enable

" 根据文件类型加载插件和缩进规则
filetype plugin indent on

" 显示行号和相对行号，便于定位代码
set number
" set relativenumber

" 高亮当前行
set cursorline

" 显示匹配括号
set showmatch

" 自动缩进和智能缩进
set autoindent
set smartindent

" 制表符相关设置：使用空格替代 Tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" 设置编码，避免乱码
set encoding=utf-8
set fileencoding=utf-8

" 保持至少 5 行上下文，便于阅读代码
set scrolloff=5

" 搜索设置：忽略大小写，智能大小写匹配
set ignorecase
set smartcase
set hlsearch
set incsearch

" 命令行补全增强
set wildmenu

" 允许在插入模式下使用 Backspace 删除缩进、换行和前一字符
set backspace=indent,eol,start

" 配置剪贴板支持（Linux 下通常可用）
set clipboard=unnamedplus

" 不生成交换文件，减少临时文件
set noswapfile

" 不创建备份文件
set nobackup

" 启用撤销历史，跨会话保留更改
set undofile
set undodir=~/.vim/undodir

" 关闭烦人的自动换行
set nowrap

" 设置终端颜色支持（若终端支持则显示更好）
set termguicolors

" 映射常用快捷键
let mapleader = ","

" 保存文件
nnoremap <leader>w :w<CR>

" 关闭当前缓冲区
nnoremap <leader>q :q<CR>

" 取消高亮搜索结果
nnoremap <leader>h :nohlsearch<CR>

" 在可视模式下复制到系统剪贴板
vnoremap <leader>y "+y

" 粘贴系统剪贴板内容
nnoremap <leader>p "+p

"============================================================
" 末尾
"============================================================
