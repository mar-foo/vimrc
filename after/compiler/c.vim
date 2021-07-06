let current_compiler = 'tcc'

let s:cpo_save = &cpo
set cpo&vim

if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=make
CompilerSet errorformat=
    \%E%f:%l:\ %trror:%m,
    \%f:%l:\\s\\+%tarning:%m,
    \%-Q,
    \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
