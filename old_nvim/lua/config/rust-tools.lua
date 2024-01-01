local options = {
  server = {
    on_attach = require("plugins.lspconfig").on_attach,
    capabilities = require("plugins.lspconfig").capabilities,
  },
}

return options
