return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {},
	config = function()
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "",
					[vim.diagnostic.severity.HINT] = "󰌵",
				},
			},
		})

		require("neo-tree").setup({
			popup_border_style = "",
			window = { position = "right", width = 30 },
		})

		vim.keymap.set(
			"n",
			"<leader>e",
			":Neotree filesystem focus current<CR>",
			{ desc = "Open Neotree at current file" }
		)
		vim.keymap.set(
			"n",
			"<leader>E",
			":Neotree filesystem toggle current<CR>",
			{ desc = "Open Neotree at current file" }
		)
	end,
}
