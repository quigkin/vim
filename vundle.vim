set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'

Bundle "mileszs/ack.vim"
Bundle "rking/ag.vim"
Bundle 'kien/ctrlp.vim'

Bundle 'duff/vim-scratch'

Bundle 'scrooloose/nerdtree'

Bundle 'vim-ruby/vim-ruby'

Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'juvenn/mustache.vim'

Bundle 'vim-scripts/VimClojure'
Bundle 'jpalardy/vim-slime'

Bundle 'altercation/vim-colors-solarized'

" Leader<b> to activate blockle
Bundle 'jgdavey/vim-blockle'

Bundle 'duff/vim-bufonly'
" % to find matching block delimiter
Bundle 'edsono/vim-matchit'
" Autocompletion
Bundle 'tsaleh/vim-supertab'
" Run specs with leader-r and leader-R
Bundle 'skalnik/vim-vroom'

Bundle 'tpope/gem-browse'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm.git'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-dispatch'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

