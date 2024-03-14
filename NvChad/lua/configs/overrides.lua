local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"svelte",
		"c",
		"markdown",
		"markdown_inline",
		"prisma",
		"go",
	},
	indent = {
		enable = true,
	},
}

M.mason = {
	ensure_installed = {
		"lua-language-server",
		"stylua",
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"svelte-language-server",
		"prisma-language-server",
		"deno",
		"prettier",
		"eslint_d",
		"clangd",
		"clang-format",
		"node-debug2-adapter",
		"gopls",
		"gradle_ls",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
