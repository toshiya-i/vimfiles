"dein Scripts-----------------------------

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

let s:dein_dir = expand('~/vimfiles/dein')

" Required:
set runtimepath+=~/vimfiles/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml      = '~/vimfiles/dein.toml'
  let s:lazy_toml = '~/vimfiles/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

set number
set relativenumber

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

set cursorline

set whichwrap=b,s,h,l,<,>,[,],~
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <down> gj
nnoremap <up> gk

set list
set listchars=tab:>.

set viminfo+=n~/vimfiles/tmp/viminfo

set backup
set backupdir=~/vimfiles/tmp/backup

set swapfile
set directory=~/vimfiles/tmp/swap

if has('persistent_undo')
  set undofile
  set undodir=~/vimfiles/tmp/undo
endif
