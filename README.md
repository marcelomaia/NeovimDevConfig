# NeovimDevConfig

- Q: What is it?
- A: My personal configuration for NeoVIM

- Q: It's better than a paid IDE?
- A: Sure bro!

- Q: Which leader key is used for this project?
- A: slash -> \ because it's next to CTRL.

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
  - haya14busa/incsearch.vim
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
- Nodejs >= 12. Please prefer [NVM](https://github.com/nvm-sh/nvm)

### Optional

- [Jedi](https://github.com/davidhalter/jedi)
- [Virtualenv](https://github.com/pypa/virtualenv)
- [Ctags](http://ctags.sourceforge.net/)

## Features

### Useful shortcuts

- \<c-space\> - display code actions like refactoring and fix errors
- \<c-p\>     - quickly find file
- \<Leader\>l          - code indenting
- K/J         - move a code block up/down

### For all languages

- Nice lint integration (vimfiles, json, vue, js, python, c#, markdown)
- Snippets for many languages

### For Python

- TODO: auto suggest imports
- Intellisense from coc-python
  - refactoring
  - extract variable
  - sort imports
- Django objects.filter has auto complete!

## Shortcuts

### Git

- \<Leader\>gs  - git status
- \<Leader\>gd  - git diff(useful for merge conflicts)
- \<Leader\>gl  - accepts diff from right
- \<Leader\>gh  - accepts diff from left
- \<Leader\>gc  - git commit (type "commit" in commit dialog to use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))
- \<Leader\>gv  - Show file history
- \<Leader\>gj  - go to next modification in your source code
- \<Leader\>gk  - go to previous modification in your source code
- \<Leader\>gg  - preview git modification
- \<Leader\>gu  - undo git modification

### Window and tab navigation

- \<c-l\> - go to -> window
- \<c-h\> - go to <- window
- \<c-k\> - go to ^ window
- \<c-j\> - go to bottom window
- \<Leader\>1    - go to first tab
- \<Leader\>2    - go to second tab and so on...
- \<Leader\>>    - vertical resize +
- \<Leader\><    - vertical resize -
- \<Leader\>+    - horizontal resize +
- \<Leader\>-    - horizontal resize -
- \<Leader\>=    - all splits equal

### Folding

Assuming that your code is well indented, you can quickly hide and show methods/classes

- zo/zc - open/close fold
- zk/zj - to go up/down in folds
- z1 - set foldlevel = 0
- z2 - set foldlevel = 1
- zn - set foldlevel = n-1
