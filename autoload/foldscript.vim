" foldscript.vim - Show transcript when recording terminal
" Author: fcpg

let s:save_cpo = &cpo
set cpo&vim


"----------------
" Functions {{{1
"----------------

" foldscript#SetSTL {{{2
" Set the statusline for the transcript window
function! foldscript#SetSTL() abort
  if get(g:, 'foldscript_nostl', 0)
    return
  endif
  let &l:stl = ">>> Transcript <<<"
  if stridx(&fcs, 'stl:') == -1
    set fcs+=stl:-
  endif
endfun

if exists('*timer_start') && !get(g:, 'foldscript_noflash', 0)
  function! foldscript#FlashText() abort
    let s = get(g:, 'foldscript_flash', 100)
    let data = {'i': 1, 's': s}
    call timer_start(s, function('FoldscriptFlash', data))
  endfun

  function! FoldscriptFlash(id) dict abort
    if self.i > 5
      hi! link foldscriptLine foldscriptLine
    else
      exe 'hi! link foldscriptLine foldscriptLine'.string(self.i)
      let data = { 'i': self.i+1, 's': self.s }
      call timer_start(data['s'], function('FoldscriptFlash', data))
    endif
  endfun
endif


let &cpo = s:save_cpo
