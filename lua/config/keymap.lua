local fzf = require("fzf-lua")

-- neotree
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Open Neotree at current file" })
vim.keymap.set("n", "<leader>E", ":NvimTreeToggle<CR>", { desc = "Open Neotree at current file" })
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

-- Diagnostic keymaps
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Buffer next" })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { desc = "Buffer next" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Buffer delete" })
