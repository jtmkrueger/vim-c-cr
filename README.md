vim-c-cr
========

A very simple and small (eighteen lines of vimscript) plugin that maps ctrl+enter (`<c-cr>`) and ctrl+c (`<c-c>` for terminal-vim users) in insert mode to finish braces (`{}`), brackets (`[]`) and parentheses (`()`) for you and puts your cursor tabbed over on a blank line between them.

So,
```
{<c-cr>
or
[<c-cr>
or
(<c-cr>
```
will give you
```
{
  <your cursor here>
}
or
[
  <your cursor here>
]
or
(
  <your cursor here>
)
```
Compatible with pathogen and vundle.

DISCLAIMER
----------
ctrl+enter only works with gvim! Read [this stackoverflow question](http://stackoverflow.com/questions/598113/can-terminals-detect-shift-enter-or-control-enter) for more info.
