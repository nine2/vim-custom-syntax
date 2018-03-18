# Custom Syntax for Vim

vim-custom-syntax is a syntax plug for your project created by Long Tian.

## Installation

Copy the file on your .vim/syntaxs folder.

### Vundle

```
Bundle "nine2/vim-custom-syntax"
```

## Syntax

If you prefer the scheme to highlight the syntax, put this in your .vimrc file: 
```
" c/cpp syntax
let g:custom_syntax_hightlight_brace = 1
let g:custom_syntax_hightlight_macro = 1
let g:custom_syntax_hightlight_functions = 1
let g:custom_syntax_hightlight_operators = 1
let g:custom_syntax_hightlight_custom_type_ts = 1
```

## Custom Syntax

Put `syntax/workspace_syntax.vim` to your project and rename to `.workspace_syntax.vim`, you can write yourself syntax. Like keyword.


