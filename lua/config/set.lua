vim.g.mapleader          = " "
vim.g.maplocalleader     = " "
vim.g.have_nerd_font     = true
vim.opt.number           = true
vim.opt.relativenumber   = false
vim.opt.mouse            = "a"
vim.opt.showmode         = false
vim.opt.tabstop          = 2
vim.opt.shiftwidth       = 2
vim.opt.colorcolumn      = "100"
vim.opt.textwidth        = 100

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors    = true

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.diagnostic.config({ virtual_lines = true })
vim.opt.breakindent = true
vim.opt.undofile    = true

vim.opt.ignorecase  = true
vim.opt.smartcase   = true

vim.opt.signcolumn  = "yes"

vim.opt.updatetime  = 250
vim.opt.timeoutlen  = 300

vim.opt.splitright  = true
vim.opt.splitbelow  = true

vim.opt.cursorline  = true
vim.opt.scrolloff   = 10

vim.api.nvim_create_user_command("W", "w", { desc = "Write" })
