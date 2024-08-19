-- lua/plugins/lsp/servers.lua

local servers = {}

local lsp_dir = "plugins.lsp."

local modules = {
	"lua_ls",
	"gopls",
	"textlsp",
	"clangd",
}

for _, module in ipairs(modules) do
	local mod = require(lsp_dir .. module)
	for k, v in pairs(mod) do
		servers[k] = v
	end
end

return servers
