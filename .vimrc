set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set paste                       " enable pasting into vim without side-effects
set columns=80
autocmd BufEnter * silent! lcd %:p:h  " Change vim to the local dir automatically
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

"" Highlight lines over columns size above
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"" Gutter color
hi! link SignColumn LineNr

"" Whitespace
set nowrap                       " don't wrap lines
set tabstop=2 shiftwidth=2       " a tab is two spaces (or set this to 4)
set expandtab                    " use spaces, not tabs (optional)
set backspace=indent,eol,start   " backspace through everything in insert mode
set autoindent                   " Auto indent
set smartindent                  " Smart indent
set linespace=0

"" Searching
set hlsearch                     " highlight matches
set incsearch                    " incremental searching
set ignorecase                   " searches are case insensitive...
set smartcase                    " ... unless they contain at least one capital letter

"" Theme
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
set number

"" Mappings
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>"" Airline config
"let g:airline_symbols={}
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
set laststatus=2

"" Syntastic
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"" Emmet Config
let g:user_emmet_mode='a'

"" Indent Guides
let g:indent_guides_start_level=2

"" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Your bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'dart-lang/dart-vim-plugin'
Bundle 'digitaltoad/vim-jade'
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
Bundle 'hail2u/vim-css3-syntax'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'kshenoy/vim-signature'

filetype plugin indent on     " required!
