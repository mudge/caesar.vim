let s:digits = [[5, "V"], [1, "I"]]

function caesar#ToRoman(n)
  let n = a:n
  let result = ""
  for [limit, glyph] in s:digits
    while n >= limit
      let result .= glyph
      let n -= limit
    endwhile
  endfor
  return result
endfunction
