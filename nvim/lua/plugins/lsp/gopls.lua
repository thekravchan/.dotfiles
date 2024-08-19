local util = require 'lspconfig.util'

return {
  gopls = {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
      gopls = {
        buildFlags = { '-tags=integration' },
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
          unusedvariable = true,
          shadow = true,
        },
        staticcheck = true,
      },
    },
  },
}
