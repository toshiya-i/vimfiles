autocmd GUIEnter * set transparency=240

set background=dark
colorscheme solarized
highlight Cursor guifg=NONE guibg=Green
highlight CursorIM guifg=NONE guibg=Purple

if filereadable(expand('~/vimfiles/gvimrc.local'))
  source ~/vimfiles/gvimrc.local
endif
