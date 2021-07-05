let mapleader = ","
" Easy ESC
inoremap <silent>jk <esc>
inoremap <silent>kj <esc>

" TAB in normal mode moves to the next quickfix entry
nnoremap <silent><tab> :bnext<cr>

" WINDOW AND BUFFER MANAGEMENT
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>c :close<cr>
nnoremap <leader>v :vsplit<cr>:find
nnoremap <leader>s :split<cr>:find
nnoremap <leader>d :bd!<cr> 

" PLACEHOLDERS
nnoremap <leader><space> /<++><cr>ca<

" TERMINAL
tnoremap <esc> \<c-\\>\<c-n>
tnoremap jk \<c-\\>\<c-n>

" REGISTERS
nnoremap dD "_dd

" Make arrows useful in normal mode
nmap <down> ddp
nmap <up> ddkP
nmap <left> <nop>
nmap <right> <nop>

" Disable them in insert mode
imap <down> <nop>
imap <up> <nop>
imap <left> <nop>
imap <right> <nop>
vmap <down> <nop>
vmap <up> <nop>
vmap <left> <nop>
vmap <right> <nop>

" Make some room
nmap go o<esc>k
nmap gO O<esc>j

" Center the screen
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz

" Useful remaps for line editing
nmap E gE
nmap L g$

" Browse man pages
nmap <leader>? :!man 

" CUSTOM FUNCTIONS
nnoremap <leader>T :ThemeSwap<cr>
