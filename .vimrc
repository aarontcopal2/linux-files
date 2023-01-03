" for plugins
execute pathogen#infect()

" solarized plugin
set term=xterm-256color
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" nerdtree plugin
syntax on
filetype plugin indent on

" ack.vim
set shellpipe=>

set nu rnu
set title
" set visualbell
set ts=2
set shiftwidth=2
set smartindent
set autoindent
set backspace=indent,eol,start
set expandtab
set cursorline

" highlighting text
" colorscheme desert
" hi Search cterm=NONE ctermfg=grey ctermbg=blue
set hlsearch

" restrict autocomplete(ctrl+p) to current file
set complete-=i

" NERDTREE
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"    \ quit | endif

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

"let g:NERDTreeDirArrowExpandable = '?'
"let g:NERDTreeDirArrowCollapsible = '?'


"These next three lines are for the fuzzy search:
set nocompatible      "Limit search to your project, also prevents character insertion on pressing arrow keys.
set showmode          "Used to show insert and command mode in bottom bar.
set path+=**          "Search all subdirectories and recursively.
set wildmenu          "Shows multiple matches on one line.

" alias for vimgrep
command -nargs=1 VG vimgrep /<args>/ **/*
