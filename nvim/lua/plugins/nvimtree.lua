return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- config = function()
	-- 	local nvimtree = require("nvim-tree")
	-- 	-- local devicons = require("nvim-web-devicons")
	--
	-- 	nvimtree.setup({
	-- 		sort_by = "case_sensitive",
	-- 		renderer = {
	-- 			group_empty = true,
	-- 			icons = {
	-- 				git_placement = "after",
	-- 			},
	-- 		},
	-- 		filters = {
	-- 			dotfiles = false,
	-- 			git_clean = false,
	-- 		},
	-- 		reload_on_bufenter = true,
	-- 		hijack_cursor = false,
	-- 		update_focused_file = {
	-- 			enable = true,
	-- 		},
	-- 		git = {
	-- 			ignore = false,
	-- 		},
	-- 	})
	-- end,
	opts = {
		view = {
			width = 40,
		},
		sort_by = "case_sensitive",
		renderer = {
			group_empty = false,
			icons = {
				git_placement = "after",
			},
		},
		filters = {
			dotfiles = false,
			git_clean = false,
		},
		reload_on_bufenter = true,
		hijack_cursor = false,
		update_focused_file = {
			enable = true,
		},
		git = {
			ignore = false,
		},
		respect_buf_cwd = true,
		update_cwd = true,
	},
}
