set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" For any situation
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin' " NERDTree git
Plugin 'airblade/vim-gitgutter' " NERDTree git
Plugin 'tpope/vim-fugitive' " NERDTree git
Plugin 'ctrlpvim/ctrlp.vim' " Search files
Plugin 'scrooloose/nerdcommenter' " Comments
Plugin 'sheerun/vim-polyglot'

" Intelisense
Plugin 'neoclide/coc.nvim'
" :CocInstall coc-json
" :CocInstall coc-omnisharp
" :CocInstall coc-python
" :CocInstall coc-docker

" Web
Plugin 'mattn/emmet-vim'

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
nnoremap w1 :w<CR>
set number
set incsearch
set hlsearch
set wildmenu
set title
set ignorecase " case insensitive on search
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
filetype plugin on " enables ftplugin

" Identation
set expandtab
set shiftwidth=4
set softtabstop=4
map <Leader>l gg=G<C-o><C-o>
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
" ============= Preferences =================

" ============= Coc =================
" inoremap <silent><expr> <c-space> coc#refresh() TODO: whats this does?
nmap <silent> <Leader>j <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>k <Plug>(coc-diagnostic-next)
nmap <silent> <Leader>J <Plug>(coc-diagnostic-prev-error)
nmap <silent> <Leader>K <Plug>(coc-diagnostic-next-error)

nmap <F2> <Plug>(coc-rename)
nmap <silent> <c-space> :CocAction<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ============= Coc =================

" ================NERDTree====================
let NERDTreeShowHidden=1
nmap <C-n> :NERDTreeToggle<CR>
" navigation between tabs
nmap  <C-t> :tabn<CR>
" navigation between vsplit and split
map <C-H> :wincmd h<CR>
map <C-J> :wincmd j<CR>
map <C-K> :wincmd k<CR>
map <C-L> :wincmd l<CR>
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
" ================Ctrlp====================

" ================GitGutter====================
" Go to next git change
nmap <Leader>f <Plug>(GitGutterNextHunk)
nmap <Leader>d <Plug>(GitGutterPrevHunk)
nmap <Leader>g <Plug>(GitGutterPreviewHunk)
nmap <Leader>u <Plug>(GitGutterUndoHunk)
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0
" ================GitGutter====================
