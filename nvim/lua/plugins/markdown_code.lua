return {
	"tpope/vim-markdown",
	-- enabled = false,
	config = function()
		vim.g.markdown_syntax_conceal = 0
		vim.g.markdown_fenced_languages = {
			"c",
			"python",
			"bash=sh",
			"lua",
		}
	end,
} --> syntax highlighting and filetype plugins for Markdown
