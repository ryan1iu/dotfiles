return {
	"JuanZoran/Trans.nvim",
	build = function()
		require("Trans").install()
	end,
	keys = {
		{ "<leader>fy", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " 翻译" },
	},
	dependencies = { "kkharji/sqlite.lua" },
	opts = {},
}
