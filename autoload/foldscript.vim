" foldscript.vim - Show transcript when recording terminal
" Author: fcpg

let s:save_cpo = &cpo
set cpo&vim


"----------------
" Functions {{{1
"----------------

" foldscript#SetSTL {{{2
" Set the statusline for the transcript window
function! foldscript#SetSTL()
  if get(g:, 'foldscript_nostl', 0)
    return
  endif
  let &l:stl = ">>> Transcript <<<"
  if stridx(&fcs, 'stl:') == -1
    set fcs+=stl:-
  endif
endfun



let &cpo = s:save_cpo
