" Vim Custom syntax file
" copy this file to your project root dir
" rename to .workspace_syntax.vim

" eg.
" syn keyword Type CustomKeyword


" Sys
if &filetype == "go" || expand("%:e") == ".go"
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_types = 1
    let g:go_highlight_operators = 1

    syn keyword StorageClass fmt log http
    syn keyword StorageClass io ioutil json jsonrpc

endif

