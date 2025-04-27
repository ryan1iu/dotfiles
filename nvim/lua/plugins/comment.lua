return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		toggler = {
			line = "<leader>/",
		},
		---LHS of operator-pending mappings in NORMAL and VISUAL mode
		opleader = {
			line = "<leader>/",
		},
	},
}
