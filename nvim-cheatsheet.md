# vim cheatsheet

## Movements

### General

- Ctrl + Z brings nvim to the background (opens the Terminal).
- It can be brought back by typing `fg` in the Terminal.

### Motions

- h : left
- j : down
- k : up
- l : right
- e : end of word
- w : start of next word
- b : backward to the beginning of a word
- $ : end of line
- 0 : start of line
- H : Top of screen
- M : middle of screen
- L : bottom of screen
- % : matching closing paranthesis/bracket
- G : end of file
- gg : start of file
- *number* + G : line *number*

### Combining Motions

Motions can be combined by typing a number + [motion](#Motions) (e.g. `2w` move forward two words).

## Operators

Operators can be combined with numbers to repeat them that many times (e.g. `d2w` delete two words).

### Operator List

- d + *[motion](#Motions)* : [delete](#Deleting)
- y + *[motion](#Motions)* : yank (copy) 
- u : undo last command
- U : Fix (undo) whole line
- *Control* + r : redo command
- p : paste after cursor
- P : paste before cursor
- r + *character* : replace character at cursor with character.
- c + *[motion](#Motions)* : delete until motion and enter insert mode.

## Commands

Commands can be combined (e.g. `:wq` -> save and quit)

- :/ : search
- :? : search backwards
- :q : quit
- :w *name* : write (save) as *name*
- :*command*! : force command (e.g. `:qa!` to force quit without saving)
- n : repeat command
- N : repeat command backwards (e.g. for search)
- :!*external command* : execute external (shell) command
- :r *file*/*command* : retrieve content/output of *file*/*command* and paste below cursor

### Searching

- :/*search* : search for *search* forwards
- :?*search* : search for *search* backwards
    -> \c flag to ignore case
    -> :set ic to always ignore case (noic to not ignore case, invic to invert setting)
- n : repeat search forwards
- N : repeat search backwards
- :s/*word*/*replace* : replace *word* with *replace*, add `/g` flag to replace in the whole line
- :%s/*word*/*replace*/g : replace *word* with *replace* in the whole file, add `/gc` instead of `/g` for a prompt on every *word*.
- :noh will disable highlighting until the next search.

## Editing

### Basic Editing

- i : insert (before the cursor)
- a : append (behind the cursor)
- A : append (end of line)
- o : create new line below cursor and enter insert mode
- O : create new line above cursor and enter insert mode
- R : Replace mode (every typed character replaces an existing character)

### Deleting

Deleting works the same as cut, when a line is deleted it can be pasted by the usual means (`p`/`P`)
- d + [motion](#Motions) : (e.g. `dw` delete until start of next word)
- dd : delete the whole line (`2dd` delete two lines.)
- x : delete character

### Visual mode

Enter visual (select) mode with `v` and linewise visual mode with `V`

Text can be selected with [movement](#Motions) keys. 

Once text is selected it can be manipulated with an [operator](#Operators)

## Options

- :set *option* : set an option to on
- :set no*option* : set an option to off
- :set inv*option* : toggle an option

### Options List

- ic : ignorecase when searching
- is : show partial matches for search phrase
- hls : highlight all matching phrases

## Plugin specifics

### Neotree

open with `:Neotree`

- . : set root dir
- / : fuzzy finder
- <Space> / <Enter> : toggle node
- A : add directory
- C : close node
- D : fuzzy finder directory
- H : toggle hidden
- R : refresh
- S : open split
- a : add file or directory (dir if it ends with /)
- c : copy
- d : delete
- m : move
- o : open
- p : paste from clipboard
- q : close Neotree
- r : rename
- s : open in v-split
- t : open in new tab
- w : open with window picker
- x : cut to clipboard
- y : copy to clipboard
- z : close all nodes
- ? : show help

### ToggleTerm

open a floating Terminal with `:ToggleTerm`

## Getting Help

- F1 / :help : toggle the main help window.
- :help *command*/*key* : open help to specific command.

