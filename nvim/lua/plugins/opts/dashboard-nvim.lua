local logo = [[
         ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
         ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
         ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
         ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

local opts = {
	theme = "doom",
	hide = {
		statusline = false,
	},
	config = {
		header = vim.split(logo, "\n"),
    -- stylua: ignore
		center = {
      { action = "ene | startinsert",                              desc = "New File",        icon = " ", key = "n" },
      { action = 'lua require("persistence").load()',              desc = "Restore Session", icon = " ", key = "s" },
			{ action = "Lazy",                                           desc = "Lazy",            icon = "󰒲 ", key = "l" },
      { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = "Quit",            icon = " ", key = "q" },
		},
		footer = function()
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
		end,
	},
}

for _, button in ipairs(opts.config.center) do
	button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
	button.key_format = "  %s"
end

return opts
