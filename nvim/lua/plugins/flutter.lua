return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    keys = {
      -- FLUTTER-TOOLS
      -- ######################################
      { "<leader>Fd", "<cmd> FlutterDevices <CR>", desc = "Flutter devices" },
      { "<leader>Fe", "<cmd> FlutterEmulator <CR>", desc = "Flutter emultor" },
      { "<leader>FD", "<cmd> FlutterDetatch <CR>", desc = "Flutter detatch" },
      { "<leader>Ff", "<cmd> FlutterRun <CR>", desc = "Flutter run" },
      { "<leader>Fq", "<cmd> FlutterQuit <CR>", desc = "Flutter quit" },
      { "<leader>Fr", "<cmd> FlutterReload <CR>", desc = "Flutter reload" },
      { "<leader>FR", "<cmd> FlutterRestart <CR>", desc = "Flutter restart" },
      { "<leader>Fpu", "<cmd> FlutterPubUpgrade <CR>", desc = "Flutter pub upgrade" },
      { "<leader>Fpg", "<cmd> FlutterPubGet <CR>", desc = "Flutter pub get" },
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
            renameFilesWithClasses = "prompt", -- "always"
            enableSnippets = true,
          },
        },
        dev_tools = {
          autostart = false, -- autostart devtools server if not detected
          auto_open_browser = false, -- Automatically opens devtools in the browser
        },
        closing_tags = {
          highlight = "ErrorMsg", -- highlight for the closing tag
          prefix = ">", -- character to use for close tag e.g. > Widget
          enabled = true, -- set to false to disable
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
