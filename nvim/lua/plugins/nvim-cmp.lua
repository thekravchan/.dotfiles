return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			build = (function()
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
		},
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"onsails/lspkind.nvim",
	},
	config = function()
		local opts = require("plugins.opts.nvim-cmp")
		local lspkind = require("lspkind")

		require("luasnip").config.setup({})
		require("cmp").setup(opts)
	end,
}
