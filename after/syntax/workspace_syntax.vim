" Vim Custom syntax file
" copy this file to your project root dir
" rename to .workspace_syntax.vim

" eg.
" syn keyword Type CustomKeyword


" Sys
if &filetype == "go" || expand("%:e") == ".go"
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 0
    let g:go_highlight_types = 1
    let g:go_highlight_operators = 0

    syn keyword StorageClass fmt log http context strings strconv time sort
    syn keyword StorageClass io ioutil json jsonrpc errors net

    syn keyword Conditional panic recover

  hi def link   goArgumentName     FunctionArgument
endif
