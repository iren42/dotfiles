" is ~/.vim/plugin/start/lsp.vim"
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
setlocal formatexpr=lsp#lsp#FormatExpr()
nmap gd <cmd>LspGotoDefinition<CR>
nmap gr <cmd>LspShowReferences<CR>
nmap ca <cmd>LspCodeAction<CR>
nmap <leader>z <cmd>LspFormat<CR>
