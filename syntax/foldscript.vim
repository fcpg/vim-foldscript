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

hi foldscriptLine guifg=#FFFFFF guibg=#303030

" hi foldscriptLine1 guifg=#ffaf5f guibg=#303030 
" hi foldscriptLine2 guifg=#FFBF7F guibg=#303030
" hi foldscriptLine3 guifg=#FFCF9F guibg=#303030
" hi foldscriptLine4 guifg=#FFDFBF guibg=#303030
" hi foldscriptLine5 guifg=#FFEFDF guibg=#303030

hi foldscriptLine1 guibg=#ffaf5f
hi foldscriptLine2 guibg=#d59555
hi foldscriptLine3 guibg=#ac7c4c
hi foldscriptLine4 guibg=#826242
hi foldscriptLine5 guibg=#594939
hi foldscriptLine6 guibg=#303030


let b:current_syntax = "foldscript"
