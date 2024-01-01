return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = true },
    panel = {
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<TAB>",
      },
    },
  },
}
