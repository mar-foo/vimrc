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
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
call plug#end()

colorscheme gruvbox
set background=dark
hi Normal ctermbg=none
