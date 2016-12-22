if exists("g:loaded_ccr") || &cp || v:version < 700
  finish
endif
let g:loaded_ccr = 1
function! Closer()
  let  prevchar = getline(".")[col(".")-2]
  let  postchar = getline(".")[col(".")-1]
  if prevchar ==# "{"
    if postchar ==# "}"
      return ""
    else
      return "}"
    endif
  elseif prevchar ==# "["
    if postchar ==# "]"
      return ""
    else
      return "]"
    endif
  elseif prevchar ==# "("
    if postchar ==# ")"
      return ""
    else
      return ")"
    endif
  else
    return " "
  endif
endfunction
imap <C-CR> <C-R>=Closer()<C-M><Left><CR><CR><C-o>k<Tab>
imap <C-c> <C-R>=Closer()<C-M><Left><CR><CR><C-o>k<Tab>
" vim:set ft=vim sw=2 sts=2 et:
