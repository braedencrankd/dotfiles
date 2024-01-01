return {
  "neovim/nvim-lspconfig",
  opts = {
    config = function(_, opts)
      local util = require("lazyvim.util")
      local lspconfig = require("lspconfig")
    end,
  },
}
