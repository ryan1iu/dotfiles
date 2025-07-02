return {
	"rebelot/kanagawa.nvim",
	-- enabled = false,
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd([[colorscheme kanagawa-dragon]])
	end,
}
