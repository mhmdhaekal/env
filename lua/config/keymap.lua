local fzf = require("fzf-lua")

-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem focus right<CR>", { desc = "Open Neotree at current file" })
vim.keymap.set("n", "<leader>E", ":Neotree filesystem toggle right<CR>", { desc = "Open Neotree at current file" })
--

-- conform
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })
--

-- fzf-lua
vim.keymap.set("n", "<leader>sf", function()
	fzf.files()
end, { desc = "Fzf filesystem" })

vim.keymap.set("n", "<leader>sg", function()
	fzf.live_grep()
end, { desc = "Fzf grep project" })

vim.keymap.set("n", "<leader>sd", function()
	fzf.diagnostics_document()
end, { desc = "Fzf diagnostics_document" })

vim.keymap.set("n", "<leader>sx", function()
	fzf.diagnostics_workspace()
end, { desc = "Fzf diagnostics_workspace" })

vim.keymap.set("n", "<leader>s/", function()
	fzf.grep_curbuf()
end, { desc = "Fzf search current buffer" })

--
