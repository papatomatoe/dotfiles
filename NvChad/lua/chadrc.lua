local M = {}

M.ui = {
	theme = "chadracula-evondev",
	theme_toggle = { "chadracula-evondev", "one_light" },

	hl_override = {
		Comment = {
			italic = true,
		},
		DiffChange = {
			bg = "#464414",
			fg = "none",
		},
		DiffAdd = {
			bg = "#103507",
			fg = "none",
		},
		DiffDelete = {
			bg = "#461414",
			fg = "#3e3e3e",
		},
		DiffText = {
			bg = "#464414",
			fg = "none",
		},
	},
	hl_add = {
		NvimTreeOpenedFolderName = { fg = "green", bold = true },
	},
}

return M
