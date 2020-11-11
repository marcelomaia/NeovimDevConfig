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

" Let Vundle manage Vundle, required
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
Plugin 'APZelos/blamer.nvim'                          " like git lens from vscode
Plugin 'Xuyuanp/nerdtree-git-plugin'                  " NERDTree git
Plugin 'airblade/vim-gitgutter'                       " NERDTree git
Plugin 'editorconfig/editorconfig-vim'                " keep coding style across IDES
Plugin 'godlygeek/tabular'                            " Align things in the same line. Visual : Tab /pattern
Plugin 'haya14busa/incsearch-fuzzy.vim'               " Fuzzy search
Plugin 'haya14busa/incsearch.vim'                     " For a better experience in searching
Plugin 'honza/vim-snippets'                           " Snippets
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown preview in browser
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } } " Find files
Plugin 'junegunn/fzf.vim'                             " Find files
Plugin 'junegunn/gv.vim'                              " Git history
Plugin 'majutsushi/tagbar'                            " Get an overview of current file structure
Plugin 'neoclide/coc.nvim'                            " For code intellisense
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter'                     " Comments
Plugin 'sheerun/vim-polyglot'                         " Syntax highlight
Plugin 'tpope/vim-fugitive'                           " NERDTree git
Plugin 'tpope/vim-rhubarb'                            " Browse github
Plugin 'tpope/vim-surround'                           " Rename tags and etc
Plugin 'yggdroot/indentline'                          " Show a vertical line for indents
" Web
Plugin 'mattn/emmet-vim'                              " Html completion
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
" https://vi.stackexchange.com/questions/24792/how-to-automatically-perform-a-command-after-yanking-text-vim-wayland-clipboard
"au TextYankPost * call system("xclip -selection clipboard", @") " After yank, save to clipboard
let mapleader = "\\"
colorscheme dracula
let g:airline_theme='wombat'
noremap q1 :q<CR>
nnoremap w2 :w<CR>
nnoremap wq1 :wq<CR>
nmap <c-p> :FZF<CR>
nmap <c-p>p :Ag<CR>
set termguicolors
set splitright
set confirm
set number
set wildmenu
set title
set ignorecase " Case insensitive on search
set cursorline
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" Delays and poor user experience.
set updatetime=300
filetype plugin on " Enables ftplugin

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
" Enable relative numbers only in Normal mode, and absolute numbers only in Insert mode
augroup toggle_relative_number
autocmd FileType help wincmd L  " TODO: group autocmd cmds...opens help window vertically
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber
" Highlight trailing whitespace
match ErrorMsg '\s\+$'
" Remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e
" Tab navigation
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
" Vertical / horizontal resize
noremap <Leader>> <c-w>10>  " Vertical +
noremap <Leader>< <c-w>10<  " Vertical -
noremap <Leader>+ <c-w>5+   " Horizontal +
noremap <Leader>- <c-w>5-   " Horizontal -
noremap <Leader>= <c-w>=
" Navigation between vsplit and split
map <C-H> :wincmd h<CR>
map <C-J> :wincmd j<CR>
map <C-K> :wincmd k<CR>
map <C-L> :wincmd l<CR>
" My keyboard is very small, so it makes sense
map <C-Left> :wincmd h<CR>
map <C-Down> :wincmd j<CR>
map <C-Up> :wincmd k<CR>
map <C-Right> :wincmd l<CR>
" Hlsearch
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
noremap <Leader>se :setlocal spell spelllang=en_us<CR>
noremap <Leader>sp :setlocal spell spelllang=pt_BR<CR>
noremap <Leader>sc :set complete+=kspell<CR>
noremap <Leader>s! :setlocal spell!<CR>
autocmd FileType gitcommit setlocal spell spelllang=en_us
" Force hjkl
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
" ============= Preferences =================

" ============= Coc =================
" Il will use in another moment -> autocmd User CocNvimInit echo "COC started..."
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" convert a piece of code in snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
inoremap <silent><expr> <tab> coc#refresh()
vmap <Tab> <Plug>(coc-snippets-select)
nmap <silent> [w <Plug>(coc-diagnostic-prev)
nmap <silent> ]w <Plug>(coc-diagnostic-next)
nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]e <Plug>(coc-diagnostic-next-error)

nmap <F2> <Plug>(coc-rename)
nmap <silent> <c-space> :CocAction<CR>
nmap <silent> <Leader>cp :call CocAction("pickColor")<CR>
nmap <silent> <Leader>cp! :call CocAction("colorPresentation")<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <Leader>l <Plug>(coc-format)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" You can add more intellisense to yml, just add coc-settings.json config from https://www.schemastore.org/api/json/catalog.json
let g:coc_global_extensions=[ 'coc-snippets', 'coc-vimlsp', 'coc-json', 'coc-python', 'coc-prettier', 'coc-css', 'coc-docker' , 'coc-pairs', 'coc-vetur' , 'coc-markdownlint' , 'coc-eslint', 'coc-yaml', 'coc-highlight']

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
" gd!: show diff from all files
" gv: Show file history
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gco<CR>
nmap <Leader>gca :Gco --amend<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gh :diffget //2<CR>
nmap <Leader>gd :Gvdiffsplit!<CR>
nmap <Leader>gd! :G diff<CR>
nmap <Leader>gv :GV!<CR>
nmap <Leader>gb :Gbrowse<CR>
" ================Fugitive====================

" ================Blamer====================
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_insert_modes = 0
" ================Blamer====================

" ================Folding====================
" Useful for hiding and showing methods or classes
" Try zo/zc to open/close fold
" Try zk/zj to go up/down in folds
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
let g:mkdp_auto_close = 0
" ================Markdown====================

" ================Gitlab browse====================
" In your .bashrc or .zshrc add
" export MY_GITLAB_DOMAIN=xpto.domain
" export GITLAB_ACCESS_TOKEN=mytoken
let g:fugitive_gitlab_domains = [$MY_GITLAB_DOMAIN]
let g:gitlab_api_keys = {$MY_GITLAB_DOMAIN: $GITLAB_ACCESS_TOKEN}
" ================Gitlab browse====================
