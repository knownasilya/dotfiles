set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set paste                       " enable pasting into vim without side-effects
autocmd BufEnter * silent! lcd %:p:h  " Change vim to the local dir automatically
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent                  " Auto indent
set smartindent                 " Smart indent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Theme
colorscheme solarized
set background=dark
set number

"" Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Your bundles
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'groenewege/vim-less'
Bundle 'mattn/emmet-vim'
Bundle 'jwhitley/vim-matchit'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'vim-scripts/vim-coffee-script'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'

filetype plugin indent on     " required!

"" Emmet Config
let g:user_emmet_mode='a'

"" Indent Guides
let g:indent_guides_start_level=2
