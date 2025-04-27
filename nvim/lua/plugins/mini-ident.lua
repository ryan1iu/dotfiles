return {
	"echasnovski/mini.indentscope",
	version = false, -- 使用最新版
	enabled = false,
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		symbol = "┊", -- 缩进线符号
		options = { try_as_border = true }, -- 更精准的作用域检测
		draw = {
			animation = function()
				return 0
			end, -- 禁用动画（可选）
		},
	},
	config = function(_, opts)
		-- 针对排除的文件类型手动禁用
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"NvimTree",
				"Outline",
				"Trouble",
				"alpha",
				"dashboard",
				"fzf",
				"help",
				"lazy",
				"mason",
				"trouble",
				"neo-tree",
				"Trouble",
				"toggleterm",
				"mason",
				"notify",
				"gitcommit",
				"markdown",
			},
			callback = function()
				vim.b.miniindentscope_disable = true -- 禁用当前缓冲区
			end,
		})
		require("mini.indentscope").setup(opts)
		-- 自定义高亮颜色
		vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#9ACD32" })
	end,
}
