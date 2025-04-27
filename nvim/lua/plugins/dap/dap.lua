return {
	"mfussenegger/nvim-dap", -- nvim-dap
	dependencies = {
		{ "rcarriga/nvim-dap-ui" }, -- UI 支持
		{ "theHamsta/nvim-dap-virtual-text" }, -- 虚拟文本支持
		{ "nvim-neotest/nvim-nio" },
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_vt = require("nvim-dap-virtual-text")

		-- 配置调试适配器
		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "/home/ryan/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7", -- 修改为你的路径
		}

		-- 配置调试任务
		dap.configurations.c = {
			{
				name = "Launch file",
				type = "cppdbg",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopAtEntry = true,
				setupCommands = {
					{
						text = "-enable-pretty-printing",
						description = "Enable GDB pretty printing",
						ignoreFailures = false,
					},
				},
			},
		}
		dap.configurations.cpp = dap.configurations.c

		-- 配置 UI
		dapui.setup()
		vim.keymap.set("n", "<F5>", function()
			dap.continue()
		end, { desc = "Start Debugging" })
		vim.keymap.set("n", "<F10>", function()
			dap.step_over()
		end, { desc = "Step Over" })
		vim.keymap.set("n", "<F11>", function()
			dap.step_into()
		end, { desc = "Step Into" })
		vim.keymap.set("n", "<F12>", function()
			dap.step_out()
		end, { desc = "Step Out" })
		vim.keymap.set("n", "<Leader>b", function()
			dap.toggle_breakpoint()
		end, { desc = "Toggle Breakpoint" })

		-- 配置虚拟文本
		dap_vt.setup()
		vim.keymap.set("n", "<Leader>du", function()
			require("dapui").toggle()
		end, { desc = "Toggle DAP UI" })
	end,
}
