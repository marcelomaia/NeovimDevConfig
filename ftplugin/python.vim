let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['black', 'autopep8', 'isort']

nnoremap <buffer> <leader>oi :CocCommand pyright.organizeimports<CR>
