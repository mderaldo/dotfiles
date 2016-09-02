set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim' 

"Other Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tfnico/vim-gradle'
Plugin 'kien/ctrlp.vim'

"Color schemes
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

" ┌───────────────────────────────────┐
" │             Settings              │
" └───────────────────────────────────┘

" Forcing the use of hjkl keys to navigate
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set mouse=a "Enable mouse in all modes
set number " Line numbers on

" Ignore case in searches
set ignorecase

" Never ever let Vim write a backup file! They did that in the 70’s.
" Use modern ways for tracking your changes (like git), for God’s sake
set nobackup
set noswapfile

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" ┌───────────────────────────────────┐
" │               Theme               │
" └───────────────────────────────────┘

" Fonts for Mac
" set guifont=Monaco\ for\ Powerline:h15
" set guifont=Menlo\ Regular:h16
" set guifont=Hack:h15
" set guifont=Anonymous\ Pro:h17
" set guifont=Inconsolata-dz:h17
set guifont=Roboto\ Mono\ for\ Powerline:h15

" Don't show the top bar
set guioptions-=T

" Syntax on
syntax on
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow

" Download color scheme from  https://github.com/chriskempson/base16-vim
