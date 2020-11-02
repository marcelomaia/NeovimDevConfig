# NeovimDevConfig

- Q: What is it?
- A: My personal configuration for NeoVIM

- Q: It's better than a paid IDE?
- A: Sure bro!

## Plugins

- For any situation:
  - Xuyuanp/nerdtree-git-plugin
  - preservim/nerdtree
  - airblade/vim-gitgutter
  - tpope/vim-fugitive
  - junegunn/gv.vim
  - ctrlpvim/ctrlp.vim
  - scrooloose/nerdcommenter
  - sheerun/vim-polyglot
  - APZelos/blamer.nvim
  - honza/vim-snippets
  - editorconfig/editorconfig-vim
  - majutsushi/tagbar
  - iamcco/markdown-preview.nvim
  - yggdroot/indentline
- For web development
  - mattn/emmet-vim
  - prettier/vim-prettier
  - ap/vim-css-color
- Themes
  - dracula/vim
  - ryanoasis/vim-devicons
  - vim-airline/vim-airline
  - vim-airline/vim-airline-themes

## Requirements

### Mandatory

- NeoVIM
- Nodejs >= 12. Please preffer [NVM](https://github.com/nvm-sh/nvm)

### Optional

- [Jedi](https://github.com/davidhalter/jedi)
- [Virtualenv](https://github.com/pypa/virtualenv)
- [Ctags](http://ctags.sourceforge.net/)

## Features

### Useful shortcuts

- \<c-space\> - display code actions like refactoring and fix errors
- \<c-p\>     - quickly find file
- ,l          - code indenting
- K/J         - move a code block up/down

### For all languages

- Nice lint integration (vimfiles, json, vue, js, python, c#, markdown)
- Snippets for many languages

### For Python

- TODO: auto sugest imports
- Intelisense from coc-python
  - refactoring
  - extract variable
  - sort imports
- Django objects.filter has auto complete!

## Shortcuts

### Git

- ,gs  - git status
- ,gd  - git diff(usefull for merge conflicts)
- ,gl  - accepts diff from right
- ,gh  - accepts diff from left
- ,gc  - git commit (type "commit" in commit dialog to use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))
- ,gv  - Show file history
- ,gj  - go to next modification in your source code
- ,gk  - go to previous modification in your source code
- ,gg  - preview git modification
- ,gu  - undo git modification

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

### Folding

Assiming that your code is well idented, you can quickly hide and show methods/classes

- zo/zc - open/close fold
- zk/zj - to go up/down in folds
- z1 - set foldlevel = 0
- z2 - set foldlevel = 1
- zn - set foldlevel = n-1
