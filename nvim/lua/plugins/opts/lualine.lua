local opts = {
  -- stylua: ignore
	options = {
		theme = "auto",
		globalstatus = vim.o.laststatus == 3,
		disabled_filetypes = { statusline = { "dashboard",--[[  "alpha", "ministarter"  ]]} },
	},
	sections = {
		lualine_x = {
			{
				require("lazy.status").updates,
				cond = require("lazy.status").has_updates,
			},
			{
				"diff",
				symbols = {
					-- added = icons.git.added,
					-- modified = icons.git.modified,
					-- removed = icons.git.removed,
				},
				source = function()
					local gitsigns = vim.b.gitsigns_status_dict
					if gitsigns then
						return {
							added = gitsigns.added,
							modified = gitsigns.changed,
							removed = gitsigns.removed,
						}
					end
				end,
			},
		},
		lualine_y = {
			{ "progress", separator = " ", padding = { left = 1, right = 0 } },
			{ "location", padding = { left = 0, right = 1 } },
		},
		lualine_z = {
			function()
				return " " .. os.date("%I:%M")
			end,
		},
	},
	extensions = { "neo-tree", "lazy" },
}

return opts
