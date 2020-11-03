" Please, enable roslyn suppport for omnisharp
" see: https://www.strathweb.com/2019/04/roslyn-analyzers-in-code-fixes-in-omnisharp-and-vs-code/
" and https://github.com/OmniSharp/omnisharp-roslyn/wiki/Configuration-Options

" The following commands are contextual, based on the cursor position.

let b:ale_linters = { 'cs': ['OmniSharp'] }

nmap <silent> <Leader>k <Plug>(ale_previous_wrap)
nmap <silent> <Leader>j <Plug>(ale_next_wrap)

nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
nmap <silent> <buffer> <Leader>f1 <Plug>(omnisharp_find_usages)
nmap <silent> <buffer> <Leader>f2 <Plug>(omnisharp_find_implementations)
nmap <silent> <buffer> <Leader>p1 <Plug>(omnisharp_preview_definition)
nmap <silent> <buffer> <Leader>p2 <Plug>(omnisharp_preview_implementations)
nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
nmap <silent> <buffer> <Leader>q <Plug>(omnisharp_documentation)
nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
nmap <silent> <buffer> <Leader>o <Plug>(omnisharp_fix_usings)
nmap <silent> <buffer> <Leader>p <Plug>(omnisharp_signature_help)
imap <silent> <buffer> <Leader>p <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
nmap <silent> <buffer> <Leader>qa <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
nmap <silent> <buffer> <c-space> <Plug>(omnisharp_code_actions)
xmap <silent> <buffer> <c-space> <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

nmap <silent> <buffer> <Leader>l <Plug>(omnisharp_code_format)

nmap <silent> <buffer> <F2> <Plug>(omnisharp_rename)

nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)

" Enable snippet completion, using the ultisnips plugin
let g:OmniSharp_want_snippet=1
let g:OmniSharp_popup_mappings = {
\ 'sigNext': ['<C-n>', 'l'],
\ 'sigPrev': ['<C-p>', 'h'],
\ 'lineDown': ['<C-e>', 'j'],
\ 'lineUp': ['<C-y>', 'k']
\}

" IDE0008: Ignore explicit var rule
" IDE0058: Expression never used conflicts with fluent assertions
" RemoveUnnecessaryImportsFixable: Generic warning that an unused using exists
let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0058': {'type': 'None'},
\ 'IDE0008': {'type': 'None'}
\}
