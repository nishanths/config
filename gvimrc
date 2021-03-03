set guioptions-=T  " no toolbar
set guifont=Inconsolata\ Regular:h14
set lines=50 columns=90
set mousemodel=popup
set guicursor+=a:blinkon0

set termguicolors     " enable true colors support
set background=dark
colorscheme molokai_custom

let g:lightline = {
  \ 'colorscheme': 'powerline',
\ }

" no bell
set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

