-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- VSCode extension
  vim.api.nvim_exec(
    [[
      " THEME CHANGER
      function! SetCursorLineNrColorInsert(mode)
          " Insert mode: blue
          if a:mode == "i"
              call VSCodeNotify('nvim-theme.insert')

          " Replace mode: red
          elseif a:mode == "r"
              call VSCodeNotify('nvim-theme.replace')
          endif
      endfunction

      augroup CursorLineNrColorSwap
          autocmd!
          autocmd ModeChanged *:[vV\x16]* call VSCodeNotify('nvim-theme.visual')
          autocmd ModeChanged *:[R]* call VSCodeNotify('nvim-theme.replace')
          autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
          autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
          autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
          autocmd ModeChanged [vV\x16]*:* call VSCodeNotify('nvim-theme.normal')
      augroup END
  ]],
    false
  )
else
  -- ordinary Neovim
  --require("config.lazy")
end
