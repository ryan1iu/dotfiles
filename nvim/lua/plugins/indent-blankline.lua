return {
	"lukas-reineke/indent-blankline.nvim",
    enabled = false,
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	event = { "BufReadPost", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = {
			char = "┊",
			tab_char = "┊",
			highlight = "IblIndent", -- 显式关联高亮组
			smart_indent_cap = true,
		},
		scope = {
			enabled = true,
			show_start = false,
			show_end = false,
			char = "┊",
			highlight = "IblScope", -- 关键修复：关联作用域高亮组
			injected_languages = true,
		},
		exclude = {
			filetypes = {
				"Trouble",
				"alpha",
				"dashboard",
				"help",
				"lazy",
				"mason",
				"neo-tree",
				"notify",
				"toggleterm",
				"trouble",
			},
			buftypes = { "terminal", "prompt", "nofile" },
		},
	},
	config = function(_, opts)
		-- 定义高亮组（确保立即生效）
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4C566A", nocombine = true })
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#9ACD32", nocombine = true })

		-- 初始化插件
		require("ibl").setup()
	end,
}
