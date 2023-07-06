return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { import = "astrocommunity.colorscheme.mini-base16" },
  -- { import = "astrocommunity.colorscheme.nightfox" },
  -- { import = "astrocommunity.colorscheme.onigiri" },
  -- { import = "astrocommunity.colorscheme.oxocarbon" },
  -- { import = "astrocommunity.colorscheme.rose-pine" },
  -- { import = "astrocommunity.colorscheme.tokyonight" },
  -- { import = "astrocommunity.colorscheme.kanagawa" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  {
    "gruvbox.nvim",
    opts = {
      -- contrast = "soft",
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true,    -- invert background for search, diffs, statuslines and errors
      contrast = "soft", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    }
  }
}
