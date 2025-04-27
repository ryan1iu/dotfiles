return {
	"akinsho/toggleterm.nvim",
	config = function()
		local opts = {
			open_mapping = [[<c-\>]],
			hide_numbers = true, -- hide the number column in toggleterm buffers
			start_in_insert = true,
			insert_mappings = true, -- whether or not the open mapping applies in insert mode
			terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
			persist_size = true,
			persist_mode = false, -- if set to true (default) the previous terminal mode will be remembered
			direction = "float",
			close_on_exit = false, -- close the terminal window when the process exits
			autochdir = true,
			float_opts = {
				border = "curved",
				width = 120,
			},
		}

		-- local terminal = require("toggleterm.terminal").Terminal
		-- local current_dir_terminal =
		-- 	terminal:new({ hidden = false, dir = vim.fn.getcwd(), display_name = vim.fn.getcwd() })
		--
		-- function _current_dir_terminal_toggle()
		-- 	if current_dir_terminal.display_name ~= vim.fn.getcwd() then
		-- 		current_dir_terminal =
		-- 			terminal:new({ hidden = false, dir = vim.fn.getcwd(), display_name = vim.fn.getcwd() })
		-- 	end
		-- 	current_dir_terminal:toggle()
		-- end
		--
		-- vim.keymap.set("n", "<C-\\>", "<cmd>lua _current_dir_terminal_toggle()<CR>")

		-- local Terminal = require("toggleterm.terminal").Terminal

		-- local chatgpt = Terminal:new({
		-- 	cmd = "/home/ryan/.local/bin/chatgpt",
		-- 	hidden = true,
		-- 	count = 5,
		-- 	direction = "float",
		-- 	on_open = function()
		-- 		if vim.b.input_toggle_flag == nil then
		-- 			vim.b.input_toggle_flag = false
		-- 		elseif vim.b.input_toggle_flag == true then
		-- 			-- switch to Non-Latin input
		-- 			vim.fn.system("fcitx5-remote" .. " -o")
		-- 			vim.b.input_toggle_flag = false
		-- 		end
		-- 	end,
		-- 	on_close = function()
		-- 		local input_status = tonumber(vim.fn.system("fcitx5-remote"))
		-- 		if input_status == 2 then
		-- 			-- input_toggle_flag means whether to restore the state of fcitx
		-- 			vim.b.input_toggle_flag = true
		-- 			-- switch to English input
		-- 			vim.fn.system("fcitx5-remote" .. " -c")
		-- 		end
		-- 	end,
		-- 	float_opts = {
		-- 		border = "curved",
		-- 		width = 100,
		-- 	},
		-- 	display_name = "chatgpt",
		-- 	dir = "/home/ryan/",
		-- 	custom_command = true,
		-- })
		--
		-- function _chatgpt_toggle()
		-- 	chatgpt:toggle()
		-- end

		-- vim.api.nvim_set_keymap("n", "ct", "<cmd>lua _chatgpt_toggle()<CR>", { noremap = true, silent = true })
		-- vim.api.nvim_set_keymap(
		-- 	"t",
		-- 	"ct",
		-- 	[[<C-\><C-N><cmd>lua _chatgpt_toggle()<CR>]],
		-- 	{ noremap = true, silent = true }
		-- )
		--
		require("toggleterm").setup(opts)
	end,
}
