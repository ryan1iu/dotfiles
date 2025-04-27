return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter", -- 在 Neovim 启动时自动加载
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"ahmedkhalf/project.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		theme = "hyper", -- 可选主题: hyper, doom, minimal
		config = {
			disable_move = true,
			week_header = {
				enable = true, -- 显示周数
			},
			shortcut = {
				{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
				{
					desc = " Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					desc = " Projects",
					group = "DiagnosticHint",
					action = "Telescope projects",
					key = "p",
				},
				{
					desc = " dotfiles",
					group = "Number",
					action = function()
						require("telescope.builtin").find_files({
							cwd = "~/.config", -- 修改为你的 dotfiles 路径
							hidden = true,
						})
					end,
					key = "d",
				},
			},
			mru = { limit = 6 },
			project = {
				enable = false,
				limit = 5,
			},
		},
	},
}
