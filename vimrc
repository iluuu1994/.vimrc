
"NeoBundle Scripts-----------------------------

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/ilijatovilo/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/ilijatovilo/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'mac' : 'make -f make_mac.mak',
\    },
\ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'bling/vim-airline'
NeoBundle 'wincent/Command-T'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Raimondi/delimitMate'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck



" ---------------------- My configs ---------------------

set background=dark
colorscheme base16-ocean
syntax on

" Use spaces instead of tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Enable the cursor line
set cursorline

" Use relative numbers for quick jumping between lines
" This way one can use 10j to jump to the 10th line relative to the current
set number
set relativenumber

" Use `,` as a leader character
" It's much easier to type than `\`
let mapleader=","

" Enable NeoComplete on startup
let g:neocomplete#enable_at_startup = 1

" Enable airline on startup
set laststatus=2

" Hid escrollbars, they look ugly in MacVim
set guioptions-=l  " No lefthand scrollbar
set guioptions-=L  " No lefthand scrollbar on split windows
set guioptions-=r  " No righthand scrollbar
set guioptions-=R  " No righthand scrollbar on split windows
set guioptions-=b  " No bottom scrollbar

" Enable building the project with ctrl + B
map <C-B>  :make<CR>

" Enable GoTo definition using YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Configure C++ autocompletion
let g:ycm_global_ycm_extra_conf = '/Users/ilijatovilo/Documents/Developer/Repositories/shred-lang/shredc/ycm_extra_conf.py'
set tags=./tags,tags;$HOME

