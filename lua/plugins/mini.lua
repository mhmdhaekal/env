vim.pack.add({
	{
		src = "https://github.com/echasnovski/mini.nvim",
		version = "main",
	},
})

require("mini.pairs").setup({})
require("mini.statusline").setup()
require("mini.git").setup()
require("mini.diff").setup()
require("mini.indentscope").setup()
require("mini.starter").setup()
require("mini.cursorword").setup()
require("mini.notify").setup()
require("mini.tabline").setup()
