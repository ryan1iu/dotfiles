return {
	"stevearc/conform.nvim",
	-- event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "yamlfmt" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "blue" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				-- vue = { "prettierd" },
				rust = { "rustfmt" },
			},
			format_on_save = {
				lsp_fallback = false,
				-- async = true, 不知道为什么这个配置项会引发报错
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fm", function()
			conform.format({
				lsp_fallback = false,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "格式化文件或区域" })
	end,
}
