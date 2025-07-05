vim.pack.add({
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
	},
	{
		src = "https://github.com/nvim-tree/nvim-tree.lua",
	},
})


require('nvim-tree').setup({
	view = {
		float = {
			enable = true,
			open_win_config = function()
				local screen_w = vim.opt.columns:get()
				local screen_h = vim.opt.lines:get()
				local window_w = 30
				local window_h = screen_h - 4

				return {
					border = 'rounded',
					relative = 'editor',
					row = 0,
					col = screen_w - window_w, -- Position at right edge
					width = window_w,
					height = window_h,
				}
			end,
		},
		width = {
			max = -1
		},
	}
})
