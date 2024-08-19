return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "dockerfile",
        "gitignore",
        "json",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "lua",
        "vim",
      },
      auto_install = true,
      context_commentstring = {
          enable = true,
          enable_autocmd = false,
      },
    })
  end
}
