set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()


" Let vundle manage itself
Plugin 'VundleVim/Vundle.vim' 

" JavaScript 
Plugin 'othree/yajs.vim' "JS syntax
Plugin 'jelera/vim-javascript-syntax' "Enhanced JavaScript Syntax


" Node Plugins
Plugin 'moll/vim-node' "node command
Plugin 'godlygeek/tabular'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

" Markdown
Plugin 'tpope/vim-markdown'

"Other Plugins
Plugin 'jiangmiao/auto-pairs' "Open/Close braces
Plugin 'tfnico/vim-gradle'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic' "Check syntax on each save
Plugin 'nvie/vim-flake8' "PEP8 check
Plugin 'vim-scripts/SyntaxComplete' "Syntax Complete

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " displays things like the current virtualenv, git branch, files being edited, and much more.
Plugin 'tpope/vim-fugitive' "git commands without leaving vim

" Vim Configuration
Plugin 'cwoac/nvim' " 


" Color schemes
Plugin 'altercation/vim-colors-solarized'

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

set backspace=2 " make backspace work like most other apps

set mouse=a "Enable mouse in all modes
set number " Line numbers on

set encoding=utf-8

" Never ever let Vim write a backup file! They did that in the 70’s.
set nobackup
set noswapfile

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=4    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" ┌───────────────────────────────────┐
" │             Pymode                │
" └───────────────────────────────────┘
"
let g:pymode = 1
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"

" " Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"

" " Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"

let g:pymode_indent = 1

let python_highlight_all=1
syntax on
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" ┌───────────────────────────────────┐
" │             NERDTree              │
" └───────────────────────────────────┘
"

autocmd vimenter * NERDTree 				" Open by default

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif 

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$', '\.pyc$', '\.class$', '\.build$']

" Close when the nerdtree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Tabs
let g:nerdtree_tabs_smart_startup_focus=2 	" open only if directory was given as startup argument
let g:nerdtree_tabs_autoclose=0  			" Do not close current tab if there is only one window in it and it's NERDTree
let g:nerdtree_tabs_autofind=1				" Automatically find and select currently opened file in NERDTree.

" Enable switch tabs like mozila
map  <C-S-tab> :tabp<CR>
map  <C-tab> :tabp<CR>
map  <C-t> :tabnew<CR>


" ┌───────────────────────────────────┐
" │             Markdown              │
" └───────────────────────────────────┘
"

let g:markdown_minlines = 100
let g:markdown_syntax_conceal = 0
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" ┌───────────────────────────────────┐
" │               CtrlP               │
" └───────────────────────────────────┘
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

let g:ctrlp_custo_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn|build)$',
    \ 'file': '\v\.(exe|so|dll|pyc)$'
\ }


" ┌───────────────────────────────────┐
" │               Theme               │
" └───────────────────────────────────┘

syntax on
set background=dark
colorscheme solarized
