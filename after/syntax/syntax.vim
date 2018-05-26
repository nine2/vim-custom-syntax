
if !exists("g:custom_syntax_hightlight_enable")
  let g:custom_syntax_hightlight_enable= 1
endif
if g:custom_syntax_hightlight_enable is 0
    finish
endif

" Function
if !exists("g:custom_syntax_hightlight_functions")
  let g:custom_syntax_hightlight_functions = 1
endif
if g:custom_syntax_hightlight_functions isnot 0
    syn match	cUserFunction	display "[a-zA-Z_]\w*("me=e-1
    " Rpc
    syn match Rpc		display "rpc_client_\w*("me=e-1
    syn match Rpc		display "rpc_server_\w*("me=e-1
endif

" Operation
if !exists("g:custom_syntax_hightlight_operators")
  let g:custom_syntax_hightlight_operators= 0
endif
if !exists("g:custom_syntax_hightlight_operators_dot")
  let g:custom_syntax_hightlight_operators_dot = 0
endif
if g:custom_syntax_hightlight_operators isnot 0
    syntax match cUserOperation display "[?:+=\-&|~%^]"
    if g:custom_syntax_hightlight_operators_dot isnot 0
        syntax match cUserOperation display "\."
    endif
    syntax match cUserOperation display "[<>!]"
    syntax match cUserOperation display "[<>!]="
    syntax match cUserOperation display "!"
    syntax match cUserOperation display ";"
    syntax match cUserOperation display ","
    " syntax match cUserOperation display "[+=\-&|~]="
    " syntax match cUserOperation display "\(&&\|||\)"
    " syntax match cUserOperation display "\(&&\|||\)$"
    " syntax match cUserOperation display "++"
    " syntax match cUserOperation display ">>=\?"
    " syntax match cUserOperation display "<<=\?"
    " syntax match cUserOperation display "--"
    " syntax match cUserOperation display "/="
    " syntax match cUserOperation display "*="
    syntax match cUserOperation display "[\[\]]"
    " Filter Comment
    syntax match cUserOperation display "/[^/*]"me=e-1
    syntax match cUserOperation display "*[^/]"me=e-1
    syntax match cUserOperation display "*$"
    syntax match cUserOperation display "/$"
endif

" Brace
if !exists("g:custom_syntax_hightlight_brace")
  let g:custom_syntax_hightlight_brace= 1
endif
if g:custom_syntax_hightlight_brace isnot 0
    syntax match cBrace     display "{"
    syntax match cBrace     display "}"
endif

" Macro
if !exists("g:custom_syntax_hightlight_macro")
  let g:custom_syntax_hightlight_macro= 0
endif
if g:custom_syntax_hightlight_macro isnot 0
    syntax match cUserMacro    display  "[^a-zA-Z0-9_"][A-Z_][A-Z0-9_][A-Z0-9_]*[^a-zA-Z0-9_"]"hs=s+1,he=e-1,ms=s+1,me=e-1
    syntax match cUserMacro    display  "^[A-Z_][A-Z0-9_][A-Z0-9_]*[^a-zA-Z0-9_"]"he=e-1,me=e-1
endif

" Type
if !exists("g:custom_syntax_hightlight_custom_type_ts")
  let g:custom_syntax_hightlight_custom_type_ts = 0
endif
if g:custom_syntax_hightlight_custom_type_ts isnot 0
    syntax match cUserType      display "[a-zA-Z_][a-zA-Z0-9_]*_[ts][^a-zA-Z0-9_]"me=e-1
endif

" Read the Project Custom syntax to start with
runtime! syntax/workspace_syntax.vim
" let b:current_syntax_custom_file = expand("%:p:h")."/.workspace_syntax.vim"
let b:current_syntax_custom_file = GetFileInParentDirs(expand('%:p:h'), ".workspace_syntax.vim")
if filereadable(b:current_syntax_custom_file)
   execute "so ".b:current_syntax_custom_file
endif
" echom b:current_syntax_custom_file

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link cFormat		cSpecial
hi def link cCppString		cString
hi def link cCommentL		cComment
hi def link cCommentStart	cComment
hi def link cLabel		Label
hi def link cUserLabel		Label
hi def link cConditional	Conditional
hi def link cRepeat		Repeat
hi def link cCharacter		Character
hi def link cSpecialCharacter	cSpecial
hi def link cNumber		Number
hi def link cOctal		Number
hi def link cOctalZero		PreProc	 " link this to Error if you want
hi def link cFloat		Float
hi def link cOctalError		cError
hi def link cParenError		cError
hi def link cErrInParen		cError
hi def link cErrInBracket	cError
hi def link cCommentError	cError
hi def link cCommentStartError	cError
hi def link cSpaceError		cError
hi def link cSpecialError	cError
hi def link cCurlyError		cError
hi def link cOperator		Operator
hi def link cStructure		Structure
hi def link cStorageClass	StorageClass
hi def link cInclude		Include
hi def link cPreProc		PreProc
hi def link cDefine		Macro
hi def link cIncluded		cString
hi def link cError		Error
hi def link cStatement		Statement
hi def link cCppInWrapper	cCppOutWrapper
hi def link cCppOutWrapper	cPreCondit
hi def link cPreConditMatch	cPreCondit
hi def link cPreCondit		PreCondit
hi def link cType		Type
hi def link cConstant		Constant
hi def link cCommentString	cString
hi def link cComment2String	cString
hi def link cCommentSkip	cComment
hi def link cString		String
hi def link cComment		Comment
hi def link cSpecial		SpecialChar
hi def link cTodo		Todo
hi def link cBadContinuation	Error
hi def link cCppOutSkip		cCppOutIf2
hi def link cCppInElse2		cCppOutIf2
hi def link cCppOutIf2		cCppOut
hi def link cCppOut		Comment
hi def link cUserType		Type
hi def link cUserFunction	Function
hi def link cUserOperation	Operation
hi def link cBrace		Brace
hi def link cUserMacro		Macro


hi def link     goOperator          Operation
" vim: ts=8
