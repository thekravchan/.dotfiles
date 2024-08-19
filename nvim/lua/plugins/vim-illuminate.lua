return {
	"RRethy/vim-illuminate",
	config = function()
		local opts = require("plugins.opts.vim-illuminate")
		require("illuminate").configure(opts)
	end,
}
