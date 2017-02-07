" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"「Vimが使えるようになる本」から参考
set nocompatible
set hidden

set tabstop=4 shiftwidth=4 softtabstop=0
set expandtab
set backspace=indent,eol,start

set number
set ruler

set hlsearch
set incsearch
set autoindent
set smartindent

set backup
set backupdir=$HOME/vimbackup

"color sheme 変更
colorscheme molokai
syntax on
let g:molokai_original=1
let g:rehash256=1
set background=dark

set verbose showmode
set showmode
set cursorline 
set ignorecase
nnoremap <Return> o<Esc> 

"EQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" " can be called correctly.
set shellslash
"
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" " OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
" to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf' "標準で.pdfにコンパイルして開いてね
let g:Tex_ViewRule_pdf = 'open -a Preview.app' "PDFはPreview.appで開いてね
let g:Tex_CompileRule_pdf = 'pdflatex $*.tex' "pdflatexを使って.texから.pdfに変換してね
