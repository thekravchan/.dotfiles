return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local opts = require("plugins.opts.lualine")
		require("lualine").setup(opts)
	end,
}
