function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	elseif &filetype == 'vim'
		return "\<C-x>\<C-v>"
	elseif &omnifunc != ""
		return "\<C-x>\<C-o>"
	else
		return "\<C-n>"
	endif
endfunction

