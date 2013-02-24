function caesar#ToRoman(n)
  let n = a:n
  let result = ""
  while n >= 1
    let result .= "I"
    let n -= 1
  endwhile
  return result
endfunction
