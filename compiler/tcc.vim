let current_compiler = 'tcc'
if exists(":CompilerSet") != 2
	command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=make
CompilerSet errorformat=%W%f:%l:\ %tarning:%m,%E%f:%l:\ %trror:%m,%-G%.%#
