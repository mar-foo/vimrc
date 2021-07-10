nmap <buffer><Leader>s :w<CR> :!groff -e -ms % -T pdf > %:r.pdf<CR>
nmap <buffer><Leader>p :!zathura %:r.pdf & disown<CR>
imap <buffer> ee \[`e]
imap <buffer> aa \[`a]
imap <buffer> ii \[`i]
imap <buffer> oo \[`o]
imap <buffer> uu \[`u]
