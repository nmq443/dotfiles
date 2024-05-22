" Acknowlegement: nir9/poc/.vimrc
" Link: https://github.com/nir9/poc?tab=readme-ov-file

" Plugins
" If don't want to use plugin but only vanilla vim
" Then don't call init function
function InitPlugins()
	call plug#begin('~/.vim/plugged')
		"Plug 'prabirshrestha/vim-lsp'
		"Plug 'mattn/vim-lsp-settings'
		Plug 'christoomey/vim-tmux-navigator'
	call plug#end()
endfunction

call InitPlugins()

" Programming style
set number
set relativenumber
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start " backspace over everything
set mouse=a
set autoindent
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
set background=dark

" By default we don't use lsp
function g:StartLsp()
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
endfunction

" Keymap
" Open file explorer
nmap <C-n> :Lexplore30<CR>
