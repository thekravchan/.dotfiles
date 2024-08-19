local opts = {
	defaults = {},
	spec = {
		{
			mode = { "n", "v" },
			{ "<leader>f", group = "file/find" },
			{ "<leader>s", group = "search" },
			{ "<leader>g", group = "git" },
			{
				"<leader>b",
				group = "buffer",
				expand = function()
					return require("which-key.extras").expand.buf()
				end,
			},
		},
	},
}

return opts
