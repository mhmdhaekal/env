vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "lua", "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json", "rust" },
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
	end,
})
