-- 自动保存功能
-- local auto_save_group = vim.api.nvim_create_augroup("AutoSaveGroup", { clear = true })
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
-- 	group = auto_save_group,
-- 	pattern = "*",
-- 	callback = function()
-- 		if vim.bo.modifiable and vim.bo.modified and vim.bo.buftype == "" then
-- 			vim.cmd("write") -- 保存当前文件
-- 			require("conform").format({ async = true }) -- 格式化
-- 		end
-- 	end,
-- })
-- 关闭注释自动缩进
vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove("o")
	end,
})
