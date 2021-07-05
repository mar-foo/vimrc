setlocal define=^\\s*\\<\\(int\\\|void\\\|float\\\|double\\\|bool\\\|unsigned\ int\\\|static\\\|const\\)\\>\\s*\\*?
setlocal path=.,**,,
setlocal wildignore=.git
setlocal complete=.,i,d

setlocal listchars=tab:\|\ ,trail:.
setlocal list
