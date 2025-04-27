vim.g.mapleader = " "
vim.keymap.set("n", "<leader>m", "<cmd>Outline<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- tab switch
for i = 1, 9 do
	vim.api.nvim_set_keymap(
		"n", -- 普通模式
		"<leader>" .. i, -- 快捷键，例如 <leader>1
		":tabn " .. i .. "<CR>", -- 执行命令，跳转到第 i 个 Tab
		{ noremap = true, silent = true }
	)
end

-- 在最右侧打开标签页
vim.keymap.set("n", "<leader>nt", function()
	vim.cmd("tablast | tabnew")
end, { desc = "Open a new tab at the end" })

-- 关闭当前标签页
vim.keymap.set("n", "<leader>ct", function()
	vim.cmd("tabclose")
end, { desc = "Open a new tab at the end" })
