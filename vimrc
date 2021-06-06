call plug#begin('~/.vim/plugged')

" Utilities
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
Plug 'srstevenson/vim-picker'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'

" LSP and autocompletion
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Languages
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'JuliaEditorSupport/julia-vim'

" Colors
Plug 'robertmeta/nofrils'

call plug#end()

filetype plugin indent on

" Settings
set encoding=utf-8
set fileencoding=utf-8
set autoindent
set clipboard^=unnamed,unnamedplus
set mouse=a
set ttymouse=xterm2
set formatoptions+=j
set showcmd
set hidden
set textwidth=78
set ruler
set lazyredraw
set ttyfast
set wildmenu
set nocursorline
set tm=500
set backspace=2
set tabstop=4
set shiftwidth=4
set noexpandtab
set number " https://jeffkreeftmeijer.com/vim-number/
" NOTE: set laststatus=2 if lightline plugin is enabled
set laststatus=1
" NOTE: use noshowmode if lightline plugin is enabled
" set noshowmode
" http://vimcasts.org/episodes/soft-wrapping-text/
set wrap
set linebreak
runtime! macros/matchit.vim

" File-specific settings
autocmd FileType tex,plaintex,latex set textwidth=0
" autocmd FileType rust set colorcolumn=110
autocmd BufNewFile,BufRead *.go2 set syntax=go

" Search
set incsearch
set hlsearch
set smartcase
set ignorecase
set history=1000

" Trim trailing whitespace on save
" https://vi.stackexchange.com/a/456/6660
fun! TrimTrailingWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimTrailingWhitespace()

" Insert d/m format date on typing 'dm<space>' in insert mode
:iab <expr> dm strftime("= %-d/%-m")

" comments space
let NERDSpaceDelims=1

" File picker
nnoremap <C-y> :PickerEdit<CR>

" LSP
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    " nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gi <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <C-e> <plug>(lsp-document-diagnostics)
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_float_cursor = 1

" LSP settings
let g:lsp_settings_enable_suggestions = 0
let g:lsp_settings_root_markers = [
"\  " otherwise go module projects structured like 'albumday' don't work fully
"\  " TODO: can this addition be made language-specific to go instead?
"\  " The built-in settings.json specifies go.mod as a root marker for gopls,
"\  " but apparently that isn't sufficient? :LspSettingsGlobalEdit may also
"\  " not suffice guessing from the failure of the included settings.json.
\   'go.mod',
"\  " the rest is copied from the original root markers/README.md
\   '.git',
\   '.git/',
\   '.svn',
\   '.hg',
\   '.bzr'
\ ]
" let g:lsp_settings_filetype_rust = 'rls'
let g:lsp_settings = {
    \ 'rust-analyzer': {
    \     'cmd': [
    \         '/home/nishanthshanmugham/bin/rust-analyzer'
    \     ],
    \ },
\ }

" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1
let g:rust_recommended_style = 0

" Go
let g:go_fmt_command = "goimports"

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 0

" IndentLine
let g:indentLine_char = '▏'
let g:indentLine_setColors = 0 " ayu colorscheme provides highlighting
let g:indentLine_setConceal = 0

" Color and syntax
syntax on
colo nofrils-dark
