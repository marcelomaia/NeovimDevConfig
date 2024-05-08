" auto import on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
