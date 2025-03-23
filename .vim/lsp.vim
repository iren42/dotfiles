try
	let lspOpts = #{
				\ }
	autocmd User LspSetup call LspOptionsSet(lspOpts)

	let lspServers = [#{
				\    name: 'typescriptlang',
				\    filetype: ['javascript', 'typescript'],
				\    path: '/usr/local/bin/typescript-language-server',
				\    args: ['--stdio'],
				\  }]

	autocmd User LspSetup call LspAddServer(lspServers)
catch
endtry

set keywordprg=:LspHover
nnoremap <leader>gd <cmd>LspGotoDefinition<CR>
nnoremap <leader>gr <cmd>LspShowReferences<CR>
nnoremap <leader>ca <cmd>LspCodeAction<CR>
