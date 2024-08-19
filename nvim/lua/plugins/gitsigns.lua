return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local opts = require("plugins.opts.gitsigns")
		require("gitsigns").setup(opts)
	end,
}
