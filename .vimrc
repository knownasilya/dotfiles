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

"" Explore tree view
let g:netrw_liststyle = 3

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
"" autocmd FileType js,json,hbs,html,css,less autocmd BufWritePre <buffer> :%s/\s\+$//e  " Autodelete trailing white spaces from specified files

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
nmap <CR> o<Esc>

"" Airline config
"let g:airline_symbols={}
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_section_c='%F'
set laststatus=2

"" Syntastic
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

"" Emmet Config
let g:user_emmet_mode='a'

"" Indent Guides
let g:indent_guides_start_level=2

"" Git
autocmd Filetype gitcommit setlocal spell textwidth=72

"" Backup and swap files
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.

"" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Your bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'digitaltoad/vim-jade'
Plugin 'nono/vim-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'
Plugin 'jwhitley/vim-matchit'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kshenoy/vim-signature'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-markdown'
Plugin 'GutenYe/json5.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'gregsexton/MatchTag'
Plugin 'matchparenpp'
Plugin 'moll/vim-node'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
