" foldscript.vim - Show transcript when recording terminal
" Author: fcpg

if exists("g:loaded_foldscript") || &cp
  finish
endif
let g:loaded_foldscript = 1

let s:save_cpo = &cpo
set cpo&vim


"================
" Functions {{{1
"================

function! s:SetSTL()
  if get(g:, 'foldscript_nostl', 0)
    return
  endif
  let &l:stl = ">>> Transcript <<<"
  if stridx(&fcs, 'stl:') == -1
    set fcs+=stl:-
  endif
endfun


"===============
" Commands {{{1
"===============

command! -nargs=1 -complete=file TScript
      \  call <Sid>SetSTL()
      \| bot 5sp <args>
      \| winc p


"===========
" Maps {{{1
"===========

nn <Plug>(foldscript)next    <C-w>pzjzx<C-w>p
nn <Plug>(foldscript)prev    <C-w>pzkzx<C-w>p
nn <Plug>(foldscript)start   <C-w>pggzx<C-w>p
nn <Plug>(foldscript)end     <C-w>pGzx<C-w>p

if !hasmapto('<Plug>(foldscript)next', 'n')
  nmap <unique> <Leader><Down>  <Plug>(foldscript)next
endif
if !hasmapto('<Plug>(foldscript)prev', 'n')
  nmap <unique> <Leader><Up>    <Plug>(foldscript)prev
endif
if !hasmapto('<Plug>(foldscript)start', 'n')
  nmap <unique> <Leader><Left>  <Plug>(foldscript)start
endif
if !hasmapto('<Plug>(foldscript)end', 'n')
  nmap <unique> <Leader><right> <Plug>(foldscript)end
endif

let &cpo = s:save_cpo

