# NeovimDevConfig

- Q: What is it?
- A: My personal configuration for NeoVIM

- Q: It's better than a paid IDE?
- A: Sure bro!

## Requirements

### Mandatory

- NeoVIM
- Nodejs >= 12

### Optional

- [Jedi](https://github.com/davidhalter/jedi)
- [Virtualenv](https://github.com/pypa/virtualenv)
- [Ctags](http://ctags.sourceforge.net/)

## Features

### For all languages

- Nice lint integration (vimfiles, json, vue, js, python, c#, markdown)
- Snippets for many languages

### For Python

- TODO: auto sugest imports

## Shortcuts

### Git

- ,gs  - git status
- ,gv  - git diff(usefull for merge conflicts)
- ,gl  - accepts diff from right
- ,gh  - accepts diff from left
- ,gco - git commit (type "commit" in commit dialog to use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))

### Window and tab navigation

- \<c-l\> - go to -> window
- \<c-h\> - go to <- window
- \<c-k\> - go to ^ window
- \<c-j\> - go to bottom window
- ,1    - go to first tab
- ,2    - go to second tab and so on...
- ,>    - vertical resize +
- ,<    - vertical resize -
- ,+    - horizontal resize +
- ,-    - horizontal resize -
- ,=    - all splits equal
