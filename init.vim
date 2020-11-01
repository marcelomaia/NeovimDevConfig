" START - Setting up Vundle - the vim plugin bundler
" https://github.com/VundleVim/Vundle.vim/issues/769
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :source $MYVIMRC
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

call vundle#begin()
" For any situation
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin' " NERDTree git
Plugin 'airblade/vim-gitgutter' " NERDTree git
Plugin 'tpope/vim-fugitive' " NERDTree git
Plugin 'ctrlpvim/ctrlp.vim' " Search files
Plugin 'scrooloose/nerdcommenter' " Comments
Plugin 'sheerun/vim-polyglot' " Syntax highlight
Plugin 'APZelos/blamer.nvim'  " like git lens from vscode

" Intelisense
Plugin 'neoclide/coc.nvim'

" Web
Plugin 'mattn/emmet-vim'
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
set confirm
set number
set incsearch
set hlsearch
set wildmenu
set title
set ignorecase " case insensitive on search
set cursorline
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
filetype plugin on " enables ftplugin

" Identation default
set expandtab
set shiftwidth=4
set softtabstop=4
map <Leader>l gg=G<C-o><C-o>
autocmd FileType javascript nnoremap <Leader>l :Prettier<CR>
autocmd FileType json nnoremap <Leader>l :Prettier<CR>
autocmd FileType typescript nnoremap <Leader>l :Prettier<CR>
autocmd FileType *.vue nnoremap <Leader>l :Prettier<CR>
autocmd FileType scss nnoremap <Leader>l :Prettier<CR>
autocmd FileType css nnoremap <Leader>l :Prettier<CR>
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
" ============= Preferences =================

" ============= Coc =================
" inoremap <silent><expr> <c-space> coc#refresh() TODO: whats this does?
nmap <silent> <Leader>j <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>k <Plug>(coc-diagnostic-next)
nmap <silent> <Leader>m <Plug>(coc-diagnostic-prev-error)
nmap <silent> <Leader>, <Plug>(coc-diagnostic-next-error)

nmap <F2> <Plug>(coc-rename)
nmap <silent> <c-space> :CocAction<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:coc_global_extensions=[ 'coc-snippets', 'coc-vimlsp', 'coc-json', 'coc-omnisharp', 'coc-python', 'coc-docker' , 'coc-pairs', 'coc-vetur' , 'coc-markdownlint' ]

" ============= Coc =================

" ================NERDTree====================
let NERDTreeShowHidden=1
nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.git$', '\.pyc$', '\.egg-info$', '__pycache__']
" ================NERDTree====================

" ================ALE-Linting====================
" nmap <silent> <Leader>k <Plug>(ale_previous_wrap) replaced by coc-diagnostic-prev
" nmap <silent> <Leader>j <Plug>(ale_next_wrap) replaced by coc-diagnostic-next
" nmap <silent> <Leader>l <Plug>(ale_fix) replace by coc-action
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'json': ['prettier']}
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
nmap <Leader>gk <Plug>(GitGutterNextHunk)
nmap <Leader>gj <Plug>(GitGutterPrevHunk)
nmap <Leader>gg <Plug>(GitGutterPreviewHunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0
" ================GitGutter====================

" ================Fugitive====================
" gs  git status 's' to stage, 'u' to unstage
" gc git commit (type 'commit' and a template message will be provided)
" gp git push
" gl: diff from right
" gh: diff from left
" gv: open vertical split to solve merge conflicts
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gco<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :diffget //3<CR>
nmap <Leader>gh :diffget //2<CR>
nmap <Leader>gv :Gvdiffsplit!<CR>
" ================Fugitive====================

" ================Blamer====================
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_insert_modes = 0
" ================Blamer====================
