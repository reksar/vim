set nocompatible " with Vi

" Call the Pathogen plugin to activate plugins in a `bundle` dir
filetype off
call pathogen#helptags()
call pathogen#infect()

filetype on
filetype plugin on
filetype plugin indent on
syntax on

set encoding=utf-8
set fileencodings=utf-8,latin1,cp1251,cp866
set backspace=indent,eol,start

" Statusbar
set ls=2
set statusline=%F%m%r%h%w\ [%{&ff},%LL]\ line:char:col=%l:%c:%v

" GUI: -----------------------------------------------------------------------
if has('gui_running')
	colorscheme khaki " Must be after `syntax on`
	set lines=35 columns=90 " Window size
	set guioptions-=T " Hide toolbar (button panel)

"	GUI Windows: -------------------------------------------------------------
	if has('gui_win32')
		set guifont=Consolas:h11
		set clipboard=unnamed " Copy into system buffer
		language messages ru_RU.UTF-8

"	GUI Linux: ---------------------------------------------------------------
	else
		set guifont=DejaVu\ Sans\ Mono\ 11
		set clipboard=unnamedplus " Copy into system buffer
		let g:CTAGS = $HOME."/.vim/ctags"
	endif

" Terminal: ------------------------------------------------------------------
else
	colorscheme khaki " Must be after `syntax on`
endif

" Highlighting: --------------------------------------------------------------
set cursorline
set incsearch
set hlsearch

" Interface: -----------------------------------------------------------------
set number " Show line numbers
set ruler " Show cursor position in a status bar
set showcmd
set guioptions+=b " Show horizontal scroll
set nowrap " Do not break the lines
set guicursor=a:blinkon600-blinkoff400 " Cursor blinking speed
set guitablabel=%t " Show file name only
set colorcolumn=80

" Formatting Text: -----------------------------------------------------------
set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent
let g:netrw_ignorenetrc=1
"set spell spelllang=ru " Orphography check

" Enable omni completion
"set omnifunc=syntaxcomplete#Complete

" Key Bindings: --------------------------------------------------------------
map <C-s> :w<CR> " Save
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprev<CR>

" Del word on `Ctrl+Backspace`
imap <C-BS> <C-W>

" Del word on `Ctrl+Del`
imap <C-Del> <C-O>dw

" Reset highlighting of searched text on `Esc`
:nnoremap <esc> :noh<return><esc>
