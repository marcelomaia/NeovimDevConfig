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

## Dependencies

### Mandatory

- NeoVIM
- Nodejs >= 12. Please prefer [NVM](https://github.com/nvm-sh/nvm)
- Python >2.7   Please prefer 3.5+

### Optional

- [Jedi](https://github.com/davidhalter/jedi)
- [Virtualenv](https://github.com/pypa/virtualenv)
- [Ctags](http://ctags.sourceforge.net/)
- [Figlet](http://www.figlet.org/)
  -- On windows try: ``npm install -g figlet-cli``

## Leader key: '\\'

## Features

- Fuzzy find files: \<Control-p>
- Find by text content (Must have Ag command)
- Show who made last modification like Gitlens from vscode
- Align text using a token as a reference
- Markdown preview
- Snippets for many languages
- Tagbar: view your variables and classes on the right side \<Control-tt>
- Comments
- Git integration for commits, conflicts, diffs, etc.
- ASCII art and ASCII diagrams
- Toggle words to it opposite: on<->off, true<->false, etc
- Intuitive navigation using [ and ]
- Intellisense for python, js, c#, vuejs, vimfiles, json, css, html, Dockerfile, yaml, sql,
- Spelling check
- Refactoring
- Renaming
- Smart suggestions

## Shortcuts

### Useful shortcuts

- \<Control-space\> - display code actions like refactoring and fix errors
- \<Control-p\>     - quickly find file
- \<Leader\>l          - code indenting
- K/J         - move a code block up/down

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

