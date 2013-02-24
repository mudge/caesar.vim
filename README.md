# caesar.vim

As presented in [Testing Vimscript with Vimrunner][0] for [Vim London,
February 2013][1], `caesar.vim` is a simple Vim plugin used to demonstrate
[Vimrunner][2] as a means of test-driving Vim script.

The plugin converts Arabic numbers (e.g. 1, 2, 5, etc.) into Roman numerals
(I, II, V, etc.) via `caesar#ToRoman()` and comes with a default binding of
`Ctrl+R` to convert the number under the cursor.

  [0]: https://speakerdeck.com/mudge/testing-vimscript-with-vimrunner
  [1]: http://www.meetup.com/Vim-London/events/102114102/
  [2]: https://github.com/AndrewRadev/vimrunner

