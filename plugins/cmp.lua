return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      opts.mapping["<C-j>"] = cmp.mapping(
          function(fallback)
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end,
          { "i", "s" }
      )
      opts.mapping["<C-k>"] = cmp.mapping(
          function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end,
          { "i" , "s"}
      )
      return opts
    end,
  },
}
