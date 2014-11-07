" Required:
if has('vim_starting')
   set nocompatible
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

"General Bundles
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'wting/rust.vim'
NeoBundle 'kien/ctrlp.vim'

"Programming languages
NeoBundle 'vim-scripts/VimClojure'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kien/rainbow_parentheses.vim'

call neobundle#end()

" Required:
filetype plugin indent on
NeoBundleCheck

"Highlight it all...
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set number

"One by default
au VimEnter * RainbowParenthesesToggle
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au BufNewFile,BufRead *.cljs set filetype=clojure
