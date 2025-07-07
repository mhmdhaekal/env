-- plugins
require("plugins.theme")
require("plugins.tree")
require("plugins.lsp")
require("plugins.blink")
require("plugins.conform")
require("plugins.treesitter")
require("plugins.mini")
require("plugins.fzf")

require("config.set")
require("config.keymap")
require("config.treesitter")

vim.cmd.colorscheme("tokyonight-night")
