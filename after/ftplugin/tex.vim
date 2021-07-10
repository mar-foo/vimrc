nmap <silent><buffer> ,r :-1read ~/Documents/Personal/Latex/Templates/relazione.tex<CR>
nmap <silent><buffer> ,a :-1read ~/Documents/Personal/Latex/Templates/template.tex<CR>
imap <silent><buffer> ,e <ESC>:-1read ~/Documents/Personal/Latex/Templates/equation.tex<CR>
imap <silent><buffer> ,d <ESC>:-1read ~/Documents/Personal/Latex/Templates/definition.tex<CR>
imap <silent><buffer> ,t <ESC>:-1read ~/Documents/Personal/Latex/Templates/theorem.tex<CR>
imap <silent><buffer> ,p <ESC>:-1read ~/Documents/Personal/Latex/Templates/deriv_parziale.tex<CR>
nnoremap <buffer><Leader>s :w<CR> :!pdflatex %<CR><CR>
nnoremap <buffer><Leader>S :w<CR> :!pdflatex %<CR>
nmap <buffer><Leader>p :!zathura %:r.pdf &<CR>
imap <buffer> aa \`{a}
imap <buffer> ee \`{e}
imap <buffer> oo \`{o}
imap <buffer> ii \`{i}
imap <buffer> uu \`{u}
imap <buffer> EE \`{E}
