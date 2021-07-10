execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
set noswapfile

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'on': 'FZF' }
Plug 'junegunn/fzf.vim', { 'on': 'FZF' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox
set background=dark
hi Normal ctermbg=none
