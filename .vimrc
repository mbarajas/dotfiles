" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/Toggle-NERDTree-width'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'neoclide/coc.nvim'
call plug#end()

set number
set autoread
set background=dark
set splitbelow
set splitright
set tabstop=8     " tabs are at proper location
set expandtab     " don't use actual tab character (ctrl-v)
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs

colorscheme onedark

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile


