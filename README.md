# NeovimDevConfig

```

                                 )         )          (       *
                               ( /(      ( /(          )\ )  (  `
                               )\()) (   )\()) (   (  (()/(  )\))(
                              ((_)\  )\ ((_)\  )\  )\  /(_))((_)()\
                               _((_)((_)  ((_)((_)((_)(_))  (_()((_)
                              | \| || __|/ _ \\ \ / / |_ _| |  \/  |
                              | .` || _|| (_) |\ V /   | |  | |\/| |
                              |_|\_||___|\___/  \_/   |___| |_|  |_|


```

- Q: What is it?
- A: My personal configuration for NeoVIM

- Q: It's better than a paid IDE?
- A: Sure bro!

## Leader key: '\\'

## Plugins

- For any situation:
  - APZelos/blamer.nvim
  - Xuyuanp/nerdtree-git-plugin
  - airblade/vim-gitgutter
  - ctrlpvim/ctrlp.vim
  - editorconfig/editorconfig-vim
  - haya14busa/incsearch.vim
  - honza/vim-snippets
  - iamcco/markdown-preview.nvim
  - junegunn/gv.vim
  - majutsushi/tagbar
  - neoclide/coc.nvim
  - preservim/nerdtree
  - scrooloose/nerdcommenter
  - sheerun/vim-polyglot
  - tpope/vim-fugitive
  - yggdroot/indentline
    - coc-docker
    - coc-esli
    - coc-json
    - coc-markdownlint
    - coc-omnisharp
    - coc-pairs
    - coc-python
    - coc-snippets
    - coc-vetur
    - coc-vimlsp
- For linting
  - dense-analysis/ale
- For web development
  - ap/vim-css-color
  - eattn/emmet-vim
  - prettier/vim-prettier
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
- Figlet

## Features

### Useful shortcuts

- \<Control-space\> - display code actions like refactoring and fix errors
- \<Control-p\>     - quickly find file
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
- \<Leader\>gc  - git commit (type "commit" to use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))
- \<Leader\>gv  - Show file history
- \<Leader\>gj  - go to next modification in your source code
- \<Leader\>gk  - go to previous modification in your source code
- \<Leader\>gg  - preview git modification
- \<Leader\>gu  - undo git modification

### Window and tab navigation

- \<Control-l\> - go to -> window
- \<Control-h\> - go to <- window
- \<Control-k\> - go to ^ window
- \<Control-j\> - go to bottom window
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
