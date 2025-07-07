vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	notify_on_error = false,
	formatters_by_ft = {
		astro = { "prettierd" },
		lua = { "stylua" },
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		vue = { "prettierd" },
		rust = { "rustfmt" },
		python = { "ruff" },
		sql = { "sqruff" },
		json = { "biome" },
		go = { "gofmt", "goimports" },
	},
})
