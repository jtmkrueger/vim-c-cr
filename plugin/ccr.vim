" if tpope does it, so should you!
if exists("g:loaded_ccr") || &cp || v:version < 700
  finish
endif
let g:loaded_ccr = 1

function! Closer()
  let  prevchar = getline(".")[col(".")-2]
  if prevchar ==# "{"
    return "}"
  elseif prevchar ==# "["
    return "]"
  elseif prevchar ==# "("
    return ")"
  else
    finish
  endif
endfunction

imap <c-cr> <C-R>=Closer()<C-M><Left><CR><CR><C-o>k<Tab>

" vim:set ft=vim sw=2 sts=2 et:
