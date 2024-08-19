return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
		},
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())
			local servers = require("plugins.lsp.servers")

			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = vim.tbl_keys(servers),
			})

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities =
						vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {}),
						require("lspconfig")[server_name].setup(server)
				end,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					-- "prettier",
					"stylua", -- lua formatter
				},
			})
		end,
	},
}
