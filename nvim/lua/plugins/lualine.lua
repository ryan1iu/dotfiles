return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "codedark",
			-- section_separators = { left = "", right = "" },
			component_separators = { left = " ", right = " " },
			disabled_filetypes = {
				statusline = { "NvimTree", "Outline" }, -- 在 NvimTree 中禁用 Lualine 的状态栏
				winbar = { "NvimTree" }, -- 如果你启用了 winbar，也禁用
			},
		},
	},
}
