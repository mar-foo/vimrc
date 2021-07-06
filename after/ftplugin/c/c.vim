" setlocal define=^\\s*\\<\\(int\\\|void\\\|float\\\|double\\\|bool\\\|unsigned\ int\\\|static\\\|const\\)\\>\\s*\\*?
setlocal path=.,**,/usr/include,,
setlocal wildignore=.git
setlocal complete=.,i,d
setlocal tabstop=8 shiftwidth=8 softtabstop=8

setlocal listchars=tab:\|\ ,trail:.
setlocal list
compiler tcc

augroup c
    autocmd!
    autocmd BufWritePre *.c,*.h :silent %s/\s\+$//e
augroup END
