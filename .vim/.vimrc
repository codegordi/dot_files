
"## if decide to move bundles calls to separate file ....
"#source ~/.bundles.vim

"## VUNDLE manager of Vim Bundles
"## source : https://github.com/gmarik/vundle
"# NOTE : quickstart vundle w > git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible              " be iMproved
set backspace=2               " permit backspace; used in conjunction w ^above set
filetype off                  " required!

"# added per https://github.com/wavded/vim-stylus/issues/26#issuecomment-13114948
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
echo "Installing Vundle.."
echo ""
silent !mkdir -p ~/.vim/bundle
silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
let iCanHazVundle=0
endif

"# start original gmarik/vundle .vimrc
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()  " no qa

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


" My bundles here:
"
" original repos on GitHub
"# from gmarik/vundle/.vimrc & https://github.com/wavded/vim-stylus/issues/26#issuecomment-13114948 (selected)
"#Bundle 'msanders/snipmate.vim'
"------ snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/emmet-vim' 
"^ used to be :'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'ciaranm/detectindent'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'troydm/easybuffer.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'mileszs/ack.vim'
"# Bundle pep8  # noqa


"## TODO:
"://github.com/klen/python-mode#documentationet g:neosnippet#snippets_directory='~/.vim/snippets/'

"#Bundle 'digitaltoad/vim-jade'
"#Bundle 'wavded/vim-stylus'
"#Bundle 'helino/vim-json'
"#Bundle 'tpope/vim-fugitive'
"#Bundle 'kien/ctrlp.vim'
"#Bundle 'bitc/vim-bad-whitespace'
"#Bundle 'majutsushi/tagbar'
"#Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
"#Bundle 'L9'
"#Bundle 'FuzzyFinder'

" non-GitHub repos
"#Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"#Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"# from https://github.com/wavded/vim-stylus/issues/26#issuecomment-13114948
if iCanHazVundle == 0
echo "Installing Bundles, please ignore key map error messages"
echo ""
:BundleInstall
endif
" Setting up Vundle - the vim plugin bundler END

filetype plugin indent on     | " required!
"# from https://github.com/wavded/vim-stylus/issues/26#issuecomment-13114948
"#colorscheme xoria256
colorscheme Zenburn
"#set relativenumber
set number
set expandtab
set tabstop=2
set shiftwidth=2
set cindent
set virtualedit=all
autocmd BufNewFile,BufRead *.jade set filetype=jade
autocmd BufNewFile,BufRead *.styl set filetype=styl
autocmd BufNewFile,BufRead *.json set filetype=json
filetype on
syntax on


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
