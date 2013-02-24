function s:Convert()
  let n = expand('<cword>')
  let r = caesar#ToRoman(n)
  execute "silent normal! ciw" . r
endfunction

nnoremap <C-R> :call <SID>Convert()<CR>
