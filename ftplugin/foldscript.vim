" Vim filetype plugin file
" Language: Foldscript

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl fen< fdm< fdo< fcl< so<"

setl fen
setl fdm=syntax
setl fdo=all
setl fcl=all
setl so=999

if exists('*timer_start') && !get(g:, 'foldscript_noflash', 0)
  autocmd BufLeave <buffer>  call foldscript#FlashText()
endif
