return {
  "mfussenegger/nvim-dap",

  -- PHP debugger
  -- stylua: ignore
  config = function()
    local dap = require("dap")
    dap.adapters.php = {
      type = "executable",
      command = "node",
      args = { os.getenv("HOME") .. "/.vscode/extensions/xdebug.php-debug-1.33.0/out/phpDebug.js" },
    }
    dap.configurations.php = {
      {
        name = "Listen for Xdebug",
        type = "php",
        request = "launch",
        hostname = "0.0.0.0",
        port = 9003,
        pathMappings = {
          ["/var/www/html"] = "${workspaceFolder}"
        }
      },
    }
  end,

  -- dependencies = {
  --   {
  --     "jbyuki/one-small-step-for-vimkind",
  --     -- stylua: ignore
  --     keys = {
  --       { "<leader>daL", function() require("osv").launch({ port = 8086 }) end, desc = "Adapter Lua Server" },
  --       { "<leader>dal", function() require("osv").run_this() end, desc = "Adapter Lua" },
  --     },
  --     config = function()
  --       local dap = require("dap")
  --       dap.adapters.nlua = function(callback, config)
  --         callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
  --       end
  --       dap.configurations.lua = {
  --         {
  --           type = "nlua",
  --           request = "attach",
  --           name = "Attach to running Neovim instance",
  --         },
  --       }
  --     end,
  --   },
  -- },
}
