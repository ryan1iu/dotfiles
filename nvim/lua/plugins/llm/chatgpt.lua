return {
	"jackMort/ChatGPT.nvim",
	-- branch = "custom",
	enabled = false,
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "echo sk-Ze1Gxgdt7dW5NjVf1c9d172bC96b4b578523B859Ce0865C3",
			api_host_cmd = "echo https://api.gpt.ge",
			openai_params = {
				-- NOTE: model can be a function returning the model name
				-- this is useful if you want to change the model on the fly
				-- using commands
				-- Example:
				-- model = function()
				--     if some_condition() then
				--         return "gpt-4-1106-preview"
				--     else
				--         return "gpt-3.5-turbo"
				--     end
				-- end,
				model = "gpt-4o",
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 4096,
				temperature = 0.2,
				top_p = 0.1,
				n = 1,
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim", -- optional
		"nvim-telescope/telescope.nvim",
	},
}
