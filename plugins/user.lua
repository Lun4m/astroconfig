return {
  {
    -- "eddyekofo94/gruvbox-flat.nvim",
    "jgottzen/gruvbox-flat.nvim",
    opts = {
      style = "dark",
      transparent = true,
      italics = {
        functions = true
      },
      theme = { Conceal = { fg = "#d4be98" } },
    },
    priority = 1000
  },
  {
    "arturgoms/moonbow.nvim"
  },
  {
    "bfredl/nvim-ipy",
    -- event = "BufEnter *.py"
    keys = {
      { "<leader>jk", "<cmd>IPython --existing --no-window<cr>", desc = "Connect to existing kernel" },
      { "<leader>jc", "<Plug>(IPy-RunCell)<cr>",                 desc = "Run current cell" },
      { "<leader>ja", "<Plug>(IPy-RunAll)<cr>",                  desc = "Run all cells" },
    }
    -- cmd = "IPyConnect"
  },
  {
    'lervag/vimtex',
    lazy = false,
    config = function()
      vim.g.vimtex_compiler_method = "latexmk"
      -- vim.g.vimtex_view_method = "general"
      vim.g.vimtex_view_method = "zathura_simple"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_view_forward_search_on_start = 0
    end,
    -- ft = { "tex", "bib" }
  },
  {
    "ggandor/leap.nvim",
    init = function()
      require('leap').add_default_mappings()
    end
  }
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
