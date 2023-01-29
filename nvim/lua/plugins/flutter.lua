return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      -- FLUTTER-TOOLS
      -- ######################################
      { "<leader>fd", "<cmd> FlutterDevices <CR>", desc = "Flutter devices" },
      { "<leader>fe", "<cmd> FlutterEmulator <CR>", desc = "Flutter emultor" },
      { "<leader>fD", "<cmd> FlutterDetatch <CR>", desc = "Flutter detatch" },
      { "<leader>ff", "<cmd> FlutterRun <CR>", desc = "Flutter run" },
      { "<leader>fq", "<cmd> FlutterQuit <CR>", desc = "Flutter quit" },
      { "<leader>fr", "<cmd> FlutterReload <CR>", desc = "Flutter reload" },
      { "<leader>fR", "<cmd> FlutterRestart <CR>", desc = "Flutter restart" },
      { "<leader>fpu", "<cmd> FlutterPubUpgrade <CR>", desc = "Flutter pub upgrade" },
      { "<leader>fpg", "<cmd> FlutterPubGet <CR>", desc = "Flutter pub get" },
    },
    ft = "dart",
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded",
          notification_style = "native",
        },
        decorations = {
          statusline = {
            app_version = false,
            device = true,
          },
        },
        widget_guides = {
          enabled = true,
        },
        closing_tags = {
          highlight = "ErrorMsg",
          prefix = "//",
          enabled = true,
        },
        lsp = {
          color = {
            enabled = false,
            background = false,
            foreground = false,
            virtual_text = true,
            virtual_text_str = "■",
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            enableSnippets = false,
          },
        },
        debugger = {
          enabled = false,
          run_via_dap = false,
        },
        -- dev_log = {
        --   enabled = true,
        --   open_cmd = "tabedit", -- command to use to open the log buffer
        -- },}) -- use defaults
      })
    end,
  },
}
