" Vim syntax file
" FileType:     Foldscript
" Author:       fcpg
" Version:      1.0
" ---------------------------------------------------------------------

syntax clear
syntax case match

syn region  foldscriptLine  start=/^\S/ end=/\n\n/ fold
syn sync    fromstart

hi foldscriptInvisible guifg=bg guibg=bg ctermbg=bg ctermfg=bg
hi! link Folded foldscriptInvisible

hi foldscriptLine guibg=#303030

let b:current_syntax = "foldscript"
