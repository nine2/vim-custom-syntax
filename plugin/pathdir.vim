" Vim plugin to change the working directory to the project root.
"
" Copyright 2018-2018 bbxytl, <bbxytl@gmail.com>
" Released under the MIT licence.

if exists('g:loaded_path_dir') || &cp
  finish
endif
let g:loaded_path_dir = 1

" Turn off autochdir.  If you're using this plugin then you don't want it.
if exists('+autochdir') && &autochdir
  set noautochdir
endif


fun! GetParentDirs(directory)
  let root_dirs = []
  if !empty(a:directory)
    let parent_dirs = split(a:directory, '/')
    while len(parent_dirs)
      let s = remove(parent_dirs, -1)
      let parent_dir = '/'.join(parent_dirs, '/')
      let root_dirs = add(root_dirs, parent_dir)
      if parent_dir == $HOME || parent_dir == '/'
        break
      endif
    endwhile
  endif
  " echo root_dirs
  return root_dirs
endfun

fun! GetFileInParentDirs(fromdir, filename)
  let parent_dirs = GetParentDirs(a:fromdir)
  if !len(parent_dirs)
    return ""
  endif
  for directory in parent_dirs
    " echo directory
    let filepath = join([directory,a:filename], '/')
    if filereadable(filepath)
      " echo filepath
      return filepath
    endif
  endfor
  return ""
endfun

" vim:set ft=vim sw=2 sts=2  fdm=marker et:
