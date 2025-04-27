return {
	"ahmedkhalf/project.nvim", -- 项目管理插件
	dependencies = { "nvim-telescope/telescope.nvim" }, -- 依赖 Telescope 搜索
	config = function()
		require("project_nvim").setup({
			-- 项目检测模式（推荐手动模式）
			detection_methods = { "pattern" }, -- 通过项目文件识别（如 .git/package.json）
			patterns = { ".project", ".git", ".clang-format", "README" }, -- 识别项目的文件标记
		})
		-- 加载 Telescope 扩展
		require("telescope").load_extension("projects")
	end,
}
