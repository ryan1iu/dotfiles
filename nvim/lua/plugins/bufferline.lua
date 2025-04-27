return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
			numbers = "ordinal", -- 显示缓冲区编号
			highlights = {
				fill = {
					bg = "#1e1e2e", -- 背景色
				},
				background = {
					bg = "#1e1e2e", -- 非活动缓冲区背景色
				},
				buffer_visible = {
					bg = "#313244", -- 可见但非活动缓冲区
				},
				buffer_selected = {
					bg = "#45475a", -- 当前活动缓冲区
					fg = "#ffffff", -- 文本颜色
					bold = true, -- 加粗
				},
			},
		},
	},
}
