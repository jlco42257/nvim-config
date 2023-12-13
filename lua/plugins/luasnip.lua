return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  version = "v2.*",
  main = "config.plugins.luasnip",
  config = function(_, opts)
    if opts then require("luasnip").config.setup(opts) end
    vim.tbl_map(
      function(type) require("luasnip.loaders.from_" .. type).lazy_load() end,
      { "vscode", "snipmate", "lua" }
    )
    -- friendly-snippets - enable standardized comments snippets
    require("luasnip").filetype_extend("typescript", { "tsdoc" })
    require("luasnip").filetype_extend("javascript", { "jsdoc" })
    require("luasnip").filetype_extend("lua", { "luadoc" })
    require("luasnip").filetype_extend("python", { "pydoc" })
    require("luasnip").filetype_extend("rust", { "rustdoc" })
    require("luasnip").filetype_extend("cs", { "csharpdoc" })
    require("luasnip").filetype_extend("java", { "javadoc" })
    require("luasnip").filetype_extend("c", { "cdoc" })
    require("luasnip").filetype_extend("cpp", { "cppdoc" })
    require("luasnip").filetype_extend("php", { "phpdoc" })
    require("luasnip").filetype_extend("kotlin", { "kdoc" })
    require("luasnip").filetype_extend("ruby", { "rdoc" })
    require("luasnip").filetype_extend("html", { "html" })
  end,

  vim.keymap.set({ "i", "s" }, "<c-k>", function()
   local ls = require "luasnip"
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end, { silent = true }),

  vim.keymap.set({ "i", "s" }, "<c-j>", function()
    local ls = require "luasnip"
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true }),

  vim.keymap.set("i", "<c-l>", function()
    local ls = require "luasnip"
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end)
}
