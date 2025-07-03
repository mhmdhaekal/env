return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"saghen/blink.cmp",
	},
	config = function()
		require("mason").setup()

		local servers = {
			gopls = {},
			rust_analyzer = {
				settings = {
					["rust-analyzer"] = {
						diagnostics = {
							enable = false,
						},
					},
				},
			},
			ts_ls = {
				init_options = {
					preferences = {
						disableSuggestions = true,
					},
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vim.fn.expand("~") .. "/lsp/node_modules/@vue/typescript-plugin",
							languages = { "vue" },
						},
					},
				},
				filetypes = {
					"typescript",
					"javascript",
					"vue",
				},
			},
			lua_ls = {
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
					},
				},
			},
			tailwindcss = {},
			sourcekit = {},
			vue_ls = {},
			jsonls = {},
			pyrefly = {},
		}

		for server, config in pairs(servers) do
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
