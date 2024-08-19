local cmp = require("cmp")
local luasnip = require("luasnip")

local opts = {
	auto_brackets = {}, -- auto add brackets
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	completion = {
		completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
	},
	preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.confirm({ select = auto_select }),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete({}),
		["<C-l>"] = cmp.mapping(function()
			if luasnip.expand_or_locally_jumpable() then
				luasnip.expand_or_jump()
			end
		end, { "i", "s" }),
		["<C-h>"] = cmp.mapping(function()
			if luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	-- experimental = {
	-- 	ghost_text = {
	-- 		hl_group = "CmpGhostText",
	-- 	},
	-- },
	-- sorting = defaults.sorting,
}

return opts
