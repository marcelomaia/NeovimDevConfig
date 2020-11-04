" START - Setting up Vundle - the vim plugin bundler
" https://github.com/VundleVim/Vundle.vim/issues/769
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo 'Installing Vundle..'
  echo ''
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set runtimepath+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo 'Installing Bundles, please ignore key map error messages'
  echo ''
  :source $MYVIMRC
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

call vundle#begin()
" For any situation
Plugin 'APZelos/blamer.nvim'  " like git lens from vscode
Plugin 'Xuyuanp/nerdtree-git-plugin' " NERDTree git
Plugin 'airblade/vim-gitgutter' " NERDTree git
Plugin 'ctrlpvim/ctrlp.vim' " Search files
Plugin 'editorconfig/editorconfig-vim' " keep coding style across IDES
Plugin 'haya14busa/incsearch-fuzzy.vim'  " fuzzy search
Plugin 'haya14busa/incsearch.vim' " for a better experience in searching
Plugin 'honza/vim-snippets'   " snippets
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown preview in browser
Plugin 'junegunn/gv.vim' " Git history
Plugin 'majutsushi/tagbar' " get an overview of current file structure
Plugin 'neoclide/coc.nvim' " for code intellisense
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter' " Comments
Plugin 'sheerun/vim-polyglot' " Syntax highlight
Plugin 'tpope/vim-fugitive' " NERDTree git
Plugin 'yggdroot/indentline' " show a vertical line for indents

" Web
Plugin 'ap/vim-css-color' " hex colors
Plugin 'prettier/vim-prettier'
" Python
" C#
Plugin 'OmniSharp/omnisharp-vim'

" Linting
Plugin 'dense-analysis/ale'

" Theme
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
" ============= Preferences =================
let mapleader = "\\"
colorscheme dracula
let g:airline_theme='wombat'
noremap q1 :q<CR>
nnoremap w2 :w<CR>
nnoremap wq1 :wq<CR>
set splitright
set confirm
set number
set wildmenu
set title
set ignorecase " case insensitive on search
set cursorline
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
filetype plugin on " enables ftplugin

" Indentation default
set expandtab
set shiftwidth=4
set softtabstop=4
map <Leader>l gg=G<C-o><C-o>
augroup PrettierFormat
    autocmd FileType javascript nnoremap <Leader>l :Prettier<CR>
    autocmd FileType json nnoremap <Leader>l :Prettier<CR>
    autocmd FileType typescript nnoremap <Leader>l :Prettier<CR>
    autocmd FileType scss nnoremap <Leader>l :Prettier<CR>
    autocmd FileType css nnoremap <Leader>l :Prettier<CR>
augroup END
" Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" enable relative numbers only in Normal mode, and absolute numbers only in Insert mode
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber
" highlight trailing whitespace
match ErrorMsg '\s\+$'
" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e
" tab navigation
" :tabedit file.txt
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
" vertical / horizontal resize
noremap <Leader>> <c-w>10>  " vertical +
noremap <Leader>< <c-w>10<  " vertical -
noremap <Leader>+ <c-w>5+   " horizontal +
noremap <Leader>- <c-w>5-   " horizontal -
noremap <Leader>= <c-w>=
" navigation between vsplit and split
map <C-H> :wincmd h<CR>
map <C-J> :wincmd j<CR>
map <C-K> :wincmd k<CR>
map <C-L> :wincmd l<CR>
" my keyboard is very small, so it makes sense
map <C-Left> :wincmd h<CR>
map <C-Down> :wincmd j<CR>
map <C-Up> :wincmd k<CR>
map <C-Right> :wincmd l<CR>
" hlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Uncomment for fuzzy search
"map z/ <Plug>(incsearch-fuzzy-/)
"map z? <Plug>(incsearch-fuzzy-?)
"map zg/ <Plug>(incsearch-fuzzy-stay)

map z/ <Plug>(incsearch-fuzzyspell-/)
map z? <Plug>(incsearch-fuzzyspell-?)
map zg/ <Plug>(incsearch-fuzzyspell-stay)
" Spelling
function SetLocalSpellLang() abort
    setlocal spell spelllang=en_us
    set complete+=kspell
endfunction
noremap <Leader>sp :.call SetLocalSpellLang()<CR>
noremap <Leader>sp! :setlocal spell!<CR>
autocmd FileType gitcommit setlocal spell spelllang=en_us
" Force hjkl
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
" ============= Preferences =================

" ============= Coc =================
inoremap <silent><expr> <tab> coc#refresh()
nmap <silent> [w <Plug>(coc-diagnostic-prev)
nmap <silent> ]w <Plug>(coc-diagnostic-next)
nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]e <Plug>(coc-diagnostic-next-error)

nmap <F2> <Plug>(coc-rename)
nmap <silent> <c-space> :CocAction<CR>

nmap <Leader>l <Plug>(coc-format)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" you can add more intellisense to yml, just add coc-settings.json config from https://www.schemastore.org/api/json/catalog.json
let g:coc_global_extensions=[ 'coc-snippets', 'coc-vimlsp', 'coc-json', 'coc-python', 'coc-emmet', 'coc-css', 'coc-docker' , 'coc-pairs', 'coc-vetur' , 'coc-markdownlint' , 'coc-eslint', 'coc-yaml' ]

" ============= Coc =================

" ================NERDTree====================
let NERDTreeShowHidden=1
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.git$', '\.pyc$', '\.egg-info$', '__pycache__', 'CodeAnalysis', 'out']
" ================NERDTree====================

" ================ALE-Linting====================
" nmap <silent> <Leader>k <Plug>(ale_previous_wrap) replaced by coc-diagnostic-prev
" nmap <silent> <Leader>j <Plug>(ale_next_wrap) replaced by coc-diagnostic-next
" nmap <silent> <Leader>l <Plug>(ale_fix) replace by coc-action
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%]%code:% %s [%severity%]'
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'json': ['prettier'], 'vue': ['eslint']}
let g:ale_linters = {'javascript': ['eslint']}
" ================ALE-Linting====================

" ================Emmet====================
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key=','
" ================Emmet====================

" ================Ctrlp====================
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|out\|bin\|obj\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
let g:ctrlp_show_hidden = 1
" ================Ctrlp====================

" ================GitGutter====================
" Go to next git change
nmap [g <Plug>(GitGutterPrevHunk)
nmap ]g <Plug>(GitGutterNextHunk)
nmap <Leader>gg <Plug>(GitGutterPreviewHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0
" ================GitGutter====================

" ================Fugitive====================
" gs  git status 's' to stage, 'u' to unstage
" gc git commit (type 'commit' and a template message will be provided)
" gca git commit --amend
" gp git push
" gl: diff from right
" gh: diff from left
" gd: open vertical split to solve merge conflicts
" gv: Show file history
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gco<CR>
nmap <Leader>gca :Gco --amend<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gh :diffget //2<CR>
nmap <Leader>gd :Gvdiffsplit!<CR>
nmap <Leader>gv :GV!<CR>
" ================Fugitive====================

" ================Blamer====================
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_insert_modes = 0
" ================Blamer====================

" ================Folding====================
" Useful for hiding and showing methods or classes
" try zo/zc to open/close fold
" try zk/zj to go up/down in folds
set foldmethod=indent
set foldlevel=99
noremap z1 :set foldlevel=0<CR>
noremap z2 :set foldlevel=1<CR>
noremap z3 :set foldlevel=2<CR>
noremap z4 :set foldlevel=3<CR>
noremap z5 :set foldlevel=4<CR>
noremap z6 :set foldlevel=5<CR>
noremap z7 :set foldlevel=6<CR>
noremap z8 :set foldlevel=7<CR>
noremap z9 :set foldlevel=8<CR>

noremap z0 :set foldlevel=99<CR>
noremap [z zk
noremap ]z zj
" ================Folding====================

" ================EditorConfig====================
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
" ================EditorConfig====================

" ================Tagbar====================
nnoremap <silent> <Leader>t :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)
" ================Tagbar====================

" ================Markdown====================
nmap <Leader>mp <Plug>MarkdownPreview
" ================Markdown====================
