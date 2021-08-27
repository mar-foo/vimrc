setlocal colorcolumn=80
setlocal expandtab tabstop=8
setlocal formatprg=hindent
setlocal listchars=space:·
setlocal list
setlocal path=.,**,,
setlocal wildignore=.git/*

if (executable('haskell-language-server-wrapper'))
    au User lsp_setup call lsp#register_server({
                \ 'name': 'haskell-language-server-wrapper',
                \ 'cmd': {server_info->['haskell-language-server-wrapper', '--lsp']},
                \ 'whitelist': ['haskell'],
                \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> K  <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    highlight link LspErrorText GruvboxRedSign
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
