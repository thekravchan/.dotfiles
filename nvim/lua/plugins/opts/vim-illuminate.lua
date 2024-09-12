local opts = {
	delay = 200,
	large_file_cutoff = 2000,
	large_file_overrides = {
		providers = {
			"lsp",
			"treesitter",
			"regex",
		},
	},
}

return opts
