setlocal path=.,**,,
setlocal smartindent autoindent
setlocal tabstop=4 shiftwidth=4 expandtab
setlocal colorcolumn=80

setlocal define=^\\s*\\<\\(func\\\|type\\\|interface\\)\\>
setlocal omnifunc=syntaxcomplete#Complete

func searchgodecl(name)
    let point = stridx(name, ".")
    " Search function in package
   if point != -1
       let pkgname = name[:point-1]
       let filename = "/usr/lib/go/" . pkgdir . "/"
       system('grep -R' . funcregexp . pkgdir)

   endif 
endfunc

func gocomplete#Complete(findstart, base)
    if a:findstart
        " Locate the start of the item, including "." and "[...]"
        let line = getline('.')
        let start = col('.') - 1
        let lastword = -1
        while start > 0
            if line[start -1] =~ '\w'
                let start -= 1
            elseif line[start -1] =~ '\.'
                if lastword == -1
                    let lastword = start
                endif
                let start -= 1
            elseif line[start - 1] == ']'
                " Skip over "[...]".
                let n = 0
                let start -= 1
                while start > 0
                    let start -= 1
                    if line[start] == '['
                        if n == 0
                            break
                        endif
                        let n -= 1
                    elseif line[start] == ']' "nested []
                        let n += 1
                    endif
                endwhile
            else
                break
            endif
        endwhile

        " Return the column of the last word, which is going to be changed.
        " Remember the text that comes before it in s:prepended.
        if lastword == -1
            let s:prepended = ''
            return start
        endif
        let s:prepended = strpart(line, start, lastword - start)
        return lastword
    endif

    " Return list of matches.

    let base = s:prepended . a:base

    " Don't do anything for an empty base, would result in all the tags in the
    " tags file.
    if base == ''
        return []
    endif

    " init cache for vimgrep to empty
    let s:grepCache = {}

    " Split item in words, keep empty word after ".". 
    " "aa" -> ['aa'], "aa." -> ['aa', ''], "aa.bb" -> ['aa', 'bb'], etc.
    " We can't use split, because we need to skip nested [...].
    " "aa[...]" -> ['aa', '[...]'], "aa.bb[...]" -> ['aa', 'bb', '[...]'], etc.
    let items = []
    let s = 0
    let arrays = 0
    while 1
        let e = match(base, '\.\|\[', s)
        if e < 0
            if s == 0 || base[s - 1] != ']'
                call add(items, strpart(base, s))
            endif
            break
        endif
        if s == 0 || base[s - 1] != ']'
            call add(items, strpart(base, s, e - s))
        endif
        if base[e] == '.'
            let s = e + 1    " skip over '.'
        else
            " Skip over [...].
            let n = 0
            let s = e
            let e += 1
            while e < len(base)
                if base[e] == ']'
                    if n == 0
                        break
                    endif
                    let n -= 1
                elseif base[e] == '['    " nested [...].
                    let n += 1
                endif
                let e += 1
            endwhile
            let e += 1
            call add(items, strpart(base, s, e - s))
            let arrays += 1
            let s = e
        endif
    endwhile

    " Find the varioble items[0]
    " 1. in current function (like with "gd")
    " 2. in tags file(s) (like with ":tag")
    " 3. in current file (like with "gD")
    let res = []
    if searchdecl(items[0], 0, 1) == 0
        " Found, now figure out the type
        " TODO: join previous line if it makes sense
        let line = getline('.')
        let col = col('.')
        "....
    endif
endfunc



