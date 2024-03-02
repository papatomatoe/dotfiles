---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find Todo" },
["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run file test",
    },
    ["<leader>to"] = {
      ":Neotest output<CR>",
      "Test output",
    },
    ["<leader>ts"] = {
      ":Neotest summary<CR>",
      "Test summary",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Dedug UI",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Breakpoint",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dn"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>cg"] = {
      ":ChatGPTCompleteCode<CR>",
      "Step over",
    },
    ["<leader>gl"] = {
      ":Flog<CR>",
      "Git Log",
    },
    ["<leader>gf"] = {
      ":DiffviewFileHistory<CR>",
      "Git File History",
    },
    ["<leader>gc"] = {
      ":DiffviewOpen HEAD~2<CR>",
      "Git Last Commit",
    },
    ["<leader>gt"] = {
      ":DiffviewToggleFile<CR>",
      "Git Last Commit",
    },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}
vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
-- more keybinds!

return M
