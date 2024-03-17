require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>Q", ":q!<CR>", { desc = "Force quit" })
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>W", ":w!<CR>", { desc = "Force save" })
map("n", "<leader>ll", "<cmd>TroubleToggle<CR>", { desc = "Toggle Trouble" })
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })
map("n", "<leader>tt", function()
	require("neotest").run.run()
end, { desc = "Run Nearest Test" })
map("n", "<leader>tf", function()
	require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run File Test" })
map("n", "<leader>to", ":Neotest output<CR>", { desc = "Test Output" })
map("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Test Summary" })
map("n", "<leader>du", function()
	require("dapui").toggle()
end, { desc = "Toggle Dedug UI" })
map("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "Add Breakpoint" })
map("n", "<leader>ds", function()
	require("dap").continue()
end, { desc = "Start Debug" })
map("n", "<leader>dn", function()
	require("dap").step_over()
end, { desc = "Step Over" })
map("n", "<leader>gl", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~2<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gt", ":DiffviewToggleFile<CR>", { desc = "Git Last Commit" })

-- map("i", "<C-g>", function()
-- 	return vim.fn["codeium#Accept"]()
-- end, { error = true })

map("i", "jj", "<ESC>", { desc = "Escape insert mode" })
