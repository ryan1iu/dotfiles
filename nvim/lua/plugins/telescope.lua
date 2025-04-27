return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- 移动到上一个结果
						["<C-j>"] = actions.move_selection_next, -- 移动到下一个结果
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "在当前工作目录模糊查询" })
		keymap.set(
			"n",
			"<leader>fr",
			"<cmd>Telescope oldfiles<cr>",
			{ desc = "在最近打开的文件中模糊查询" }
		)
		keymap.set(
			"n",
			"<leader>fs",
			"<cmd>Telescope live_grep<cr>",
			{ desc = "在当前工作目录中查找字符串" }
		)
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "在当前文件中查找字符串" })
		keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", { desc = "查找项目" })
	end,
}
