function Grep()
    let pattern = input("Search for? ")
    exec "vimgrep " . pattern . " **/*"
    exec "copen"
endfunc

function QuickMake()
    execute "silent make | redraw!"
    copen
endfunc

function ThemeSwap()
    if g:colors_name != 'gruvbox'
        colorscheme gruvbox
        set background=dark
        hi Normal ctermbg=none
    elseif &background == 'dark'
        set background=light
    else
        set background=dark
        hi Normal ctermbg=none
    endif
endfunc

let g:quickfix_open = 0
function ToggleQuickfix()
    if g:quickfix_open == 1
        cclose
        let g:quickfix_open = 0
    else
        copen
        let g:quickfix_open = 1
    endif
endfunc

function Todo()
    if expand("<cword>") == 'TODO'
        normal ciwDONE
    elseif expand("<cword>") == 'DONE'
        normal ciwTODO
    endif
endfunc
