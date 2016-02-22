# Vim FAQs

Records FAQs for everyday vim usage

## How to preserve line ending?

even if the file was already saved with new lines at the end:

`vim -b file` and once in vim:

```vim
set noeol
wq
```

alternatively you can open files in vim with :e ++bin file

Yet another alternative:

```vim
set binary
set noeol
wq
```

http://stackoverflow.com/questions/1050640/vim-disable-automatic-newline-at-end-of-file

## How to run vim commands in command line

```sh
gvim -c "set et|retab|wq" foo.txt
```

[](http://stackoverflow.com/questions/9366243/execute-a-command-within-vim-from-the-command-line)

## How to scroll horizontally

`:h scroll`

`zL`: move the view on the text half a screen width to the right.
`zH`: move the view on the text half a screen width to the left.

## How to enable Alt-key under terminal

```vim
 let c='a'
 while c <= 'z'
     exec "set <A-".c.">=\e".c
     exec "imap \e".c." <A-".c.">"
     let c = nr2char(1+char2nr(c))
 endw
 "set timeout ttimeoutlen=50
 set ttimeoutlen=20
```

http://stackoverflow.com/questions/6778961/alt-key-shortcuts-not-working-on-gnome-terminal-with-vim

## How to eval code by selection
1. First yank the text
2. execute `:@"`

## Scrolling synchronously

If we open more than one window, we can make them scroll together by:

```vim
set scrollbind
set scrollbind! " to toggle
```
## Text Object Reminders

- `[[` will only goto `{` charactor that appears on the **first** column.
- `(`: sentence backward
- `{`: paragraph backward
