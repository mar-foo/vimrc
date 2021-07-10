"==========Autocommands==========
augroup misc
    autocmd InsertEnter * norm zz
    autocmd BufWritePre * %s/\s\+$//e " Remove trailing whitespace
augroup END

"==========Email==========
augroup mail
    autocmd BufEnter neomutt-* read /home/mario/.local/share/signature.txt
augroup END
