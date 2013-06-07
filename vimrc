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
" Rspec implementation
Bundle 'skwp/vim-rspec'
" Easy motion for easy motion
Bundle 'Lokaltog/vim-easymotion'

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
let g:solarized_termcolors=256
    
" Lovely linenumbers
set rnu

" This should provide aotocomplet out of the box
set wildmode=longest,list,full
set wildmenu
map <Esc><Esc> :w<CR> " Double escape to save a file
map <leader>t :A<CR> " \t to jump to test file 
let g:RspecKeymap=0
map <Leader>c :RunSpec<cr>
