" Vim plugin to change the working directory to the project root.
"
" Copyright 2018-2018 bbxytl, <bbxytl@gmail.com>
" Released under the MIT licence.

if exists('g:loaded_custom_syntax') || &cp
  finish
endif
let g:loaded_custom_syntax = 1

fun! CSyntaxEnable()
    if exists("g:custom_syntax_hightlight_enable")
        if g:custom_syntax_hightlight_enable is 0
            let g:custom_syntax_hightlight_enable = 1
        else
            let g:custom_syntax_hightlight_enable = 0
        endif
    else
        let g:custom_syntax_hightlight_enable = 0
    endif
endfun

command! CSyntaxEnable :call CSyntaxEnable()

" vim:set ft=vim sw=2 sts=2  fdm=marker et:
