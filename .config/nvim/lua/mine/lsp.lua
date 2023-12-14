local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})

require('mason-lspconfig').setup({
	ensure_installed = {
		'helm_ls',
		'lua_ls',
		'terraformls'
		--'ansible-lint',
		--'bashls',
		--'dockerls',
		--'docker_compose_language_service',
		--'nginx-language-server'
	},
	handlers = {
		lsp_zero.default_setup,
	},
})

lsp_zero.set_preferences({
	sign_icons = { }
})
