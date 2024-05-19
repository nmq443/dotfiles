" Plugins
call plug#begin('')
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Programming style
set number
set relativenumber
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start " backspace over everything
set wildmenu
set hidden
set is
set ignorecase
set smartcase
set gp=git\ grep\ -n
set ruler
set clipboard=unnamedplus

" Appearance
color desert
set termguicolors
syntax on
set guifont=CaskaydiaMono\ Nerd\ Font\ 16
set cursorline

function! OnLspBufferEnabled() abort
		setlocal omnifunc=lsp#complete
		setlocal signcolumn=yes
		nmap <buffer> gi <plug>(lsp-definition)
		nmap <buffer> gd <plug>(lsp-declaration)
		nmap <buffer> gr <plug>(lsp-references)
		nmap <buffer> gl <plug>(lsp-document-diagnostics)
		nmap <buffer> <f2> <plug>(lsp-rename)
		nmap <buffer> <f3> <plug>(lsp-hover)
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call OnLspBufferEnabled()
augroup END
