setlocal wildignore=.git/*
setlocal path=.,**,,
setlocal smartindent autoindent
setlocal tabstop=4 shiftwidth=4 expandtab
setlocal colorcolumn=80
setlocal listchars=tab:\|\ ,trail:.
setlocal list
setlocal omnifunc=go#complete#Complete
compiler go
