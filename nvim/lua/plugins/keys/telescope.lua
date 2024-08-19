local keys = {
  -- stylua: ignore
	{	"<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",	desc = "Switch Buffer" },
	{ "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (Root Dir)" },
	{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
	{ "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root Dir)" },
	-- find
	{ "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
  -- stylua: ignore
	{ "<leader>fc",	"<cmd>Telescope find_files cwd=~/.config/nvim hidden=true no_ignore=true<cr>", desc = "Find Config File" },
	{ "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", desc = "Find Files (Root Dir)" },
	{ "<leader>fF", "<cmd>Telescope find_files root=false hidden=true no_ignore=true<cr>", desc = "Find Files (cwd)" },
	{ "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
	{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
	{ "<leader>fR", "<cmd>Telescope oldfiles cwd=vim.uv.cwd()<cr>", desc = "Recent (cwd)" },
	-- git
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
	{ "<leader>gb", "<cmd>Telescope git_bcommits_range<cr>", desc = "Blame lines (Telescope)" },
	{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
	-- search
	{ '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
	{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
	{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
	{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
	{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
	{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
	{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
	{ "<leader>sg", "<cmd>Telescope live_grep hidden=true no_ignore=true<cr>", desc = "Grep (Root Dir)" },
  -- stylua: ignore
  { "<leader>sG", "<cmd>Telescope live_grep hidden=true no_ignore=true root=false cwd=vim.uv.cwd()<cr>", desc = "Grep (cwd)" },
	{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
	{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
	{ "<leader>sj", "<cmd>Telescope jumplist<cr>", desc = "Jumplist" },
	{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
	{ "<leader>sl", "<cmd>Telescope loclist<cr>", desc = "Location List" },
	{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
	{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
	{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
	{ "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
	{ "<leader>sq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix List" },
}

return keys
