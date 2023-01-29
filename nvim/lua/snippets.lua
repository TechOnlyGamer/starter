return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" },
    event = "VeryLazy",
    config = function()
      require("luasnip.loaders.from_vscode").load("../snippets")
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    ---Setup LuaSnip completion
    event = "VeryLazy",
    keys = function()
      require("cmp").setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        sources = {
          { name = "luasnip" },
          -- more sources
        },
      })
    end,
  },
}
