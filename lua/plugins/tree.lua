vim.pack.add({
	{
		src = "https://github.com/MunifTanjim/nui.nvim"	
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons"
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim"
	},
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
	}
})

require("neo-tree").setup({
	popup_border_style = "",
	window = { position = "right", width = 30 },
})
