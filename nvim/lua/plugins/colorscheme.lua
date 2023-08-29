return {
  -- add catppuccin
  { "catppuccin/nvim" },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  { "bluz71/vim-nightfly-colors" },
  -- Configure LazyVim to use catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfly",
    },
  },
}
