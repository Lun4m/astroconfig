return {
  { "eddyekofo94/gruvbox-flat.nvim",
    init = function()
      vim.g.gruvbox_transparent = true
      vim.g.gruvbox_italic_functions = true
      vim.g.gruvbox_flat_style = "dark"
      vim.g.gruvbox_theme = { Conceal = { fg = "#d4be98" } }
    end,
  },
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
