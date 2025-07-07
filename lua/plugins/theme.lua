vim.pack.add({
	"https://github.com/catppuccin/nvim"
})

vim.pack.add({
	"https://github.com/folke/tokyonight.nvim"
})

require("catppuccin").setup({
	flavour = "mocha",
})
