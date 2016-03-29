execute pathogen#infect()
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/gundo.vim'
call vundle#end()
filetype plugin indent on

" COLORS
colorscheme badwolf " Colorscheme available from https://github.com/sjl/badwolf.git 
syntax enable		" Syntax highlighting

" SPACES AND TABS
set tabstop=4		" Show tabs as 4 spaces
set softtabstop=4	" When editing tabs are 4 spaces
set expandtab		" Tabs are spaces

" UI CONFIGURATION
set number 		    " Show line numbers
set showcmd		    " Last command is shown in bottom right
set cursorline      " Highlight/underline current line
filetype indent on  " enable filtype specific indentation
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " Redraw only when needed
set showmatch       " Highlight matching [{()}]

" SEARCHING
set incsearch       " Search as characters are entered
set hlsearch        " Highlight matches

" LEADER SHORTCUTS/KEY MAPPINGS
nnoremap <space> <Nop>
let mapleader=" "   " <leader> is <space>
nnoremap <leader>, :nohlsearch<CR>
inoremap jk <esc>
"SUPER undo
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>e :q<CR>
nnoremap <leader>ee :q!<CR>
nnoremap <leader>q :wq<CR>
" STOP USING ARROW KEYS!!!!
inoremap <up> <nop>
nnoremap <up> <nop>
inoremap <down> <nop>
nnoremap <down> <nop>
inoremap <left> <nop>
nnoremap <left> <nop>
inoremap <right> <nop>
nnoremap <right> <nop>

" FOLDING
set foldenable          " Enables folding
set foldlevelstart =10 " Start at a reasonable level of folding (0 is all folds closed 99 is all folds open)
set foldnestmax =10    " Only nest upto 10 folds, no need to do more
set foldmethod =indent " Fold based on indentation

" MOVEMENT KEY MAPPINGS
    " Movement is based on visual lines not actual lines (Allows you to use j k and in wrapped lines)
nnoremap j gj
nnoremap k gk
" move to the begining of the line
nnoremap B ^
nnoremap ^ <nop>
" Move to the end of the line
nnoremap E $
nnoremap $ <nop>
" Highlight last inserted text
nnoremap gV '[v']
