vim.pack.add({
	{
		src = "https://github.com/rafamadriz/friendly-snippets",
	},
	{
		src = "https://github.com/Saghen/blink.cmp",
		version = vim.version.range("1.0"),
	},
})

require("blink.cmp").setup({
	keymap = { preset = "super-tab" },

	appearance = {
		nerd_font_variant = "mono",
	},

	completion = { documentation = { auto_show = true }, ghost_text = { enabled = true } },

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	signature = {
		enabled = true,
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})


vim.api.nvim_create_autocmd("User", {
	pattern = "BlinkCmpMenuOpen",
	callback = function()
		vim.b.copilot_suggestion_hidden = true
	end,
})

vim.api.nvim_create_autocmd("User", {
	pattern = "BlinkCmpMenuClose",
	callback = function()
		vim.b.copilot_suggestion_hidden = false
	end,
})
