set nocompatible " be iMproved

" For vundle
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Dependencies of snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

" Git tools
Bundle 'tpope/vim-fugitive'
" Dependency managment
Bundle 'gmarik/vundle'
" Rails :/
Bundle 'tpope/vim-rails.git'
" Snippets for our use :)
Bundle 'garbas/vim-snipmate'
" Commenting and uncommenting stuff
Bundle 'tomtom/tcomment_vim'
" Beutiful solarized theme
Bundle 'altercation/vim-colors-solarized'
" Vim Ruby
Bundle 'vim-ruby/vim-ruby'
" Surround your code :)
Bundle 'tpope/vim-surround'
" Every one should have a pair (Autogenerate pairs for "{[( )
Bundle 'jiangmiao/auto-pairs'
" Tab completions
Bundle 'ervandew/supertab'
" CoffeeScript syntax
Bundle 'kchmck/vim-coffee-script'
" Fuzzu finder for vim (CTRL+P)
Bundle 'kien/ctrlp.vim'
" Ruby Tests
Bundle 'skalnik/vim-vroom'
" Easy motion for easy motion
Bundle 'Lokaltog/vim-easymotion'
" Running tests in tmux session
Bundle 'tpope/vim-dispatch'
" Gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

set grepprg=ack-grep " Set ACK as a default grep
set tags=./tags; " Set tags directory
set autoindent " Auto indention should be on

filetype plugin indent on

" Ruby stuff: Thanks Ben :)
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
" ================

" Syntax highlighting and theme

syntax enable

set background=dark
colorscheme solarized
    
" Lovely linenumbers
set rnu

" This should provide autocomplete out of the box
set wildmode=longest,list,full
set wildmenu
" Buffer switching
map <leader>p :bp<CR> " \p previous buffer
map <leader>n :bn<CR> " \n next buffer
map <leader>d :bd<CR> " \d delete buffer

let g:vroom_map_keys = 0
let g:vroom_use_dispatch = 1
let g:vroom_use_zeus = 1

map <Leader>c :call vroom#RunTestFile()<CR>
map <Leader>s :call vroom#RunNearestTest()<CR>
map <leader>t :A<CR> " \t to jump to test file


inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Removing escape
ino jj <esc>
cno jj <c-c>
vno v <esc>


""""""""""""""""""""""""""""""""""""""""
" BACKUP / TMP FILES
""""""""""""""""""""""""""""""""""""""""
if isdirectory($HOME . '/.vim/backup') == 0
	:silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" " If you have .vim-swap in the current directory, it'll use that.
" " Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
	:silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
	" undofile - This allows you to use undos after exiting and restarting
	" This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
	" :help undo-persistence
	" This is only present in 7.3+
	if isdirectory($HOME . '/.vim/undo') == 0
		:silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
	endif
	set undodir=./.vim-undo//
	set undodir+=~/.vim/undo//
	set undofile
endif



