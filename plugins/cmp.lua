local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

return {  
  {
    'hrsh7th/cmp-path'
  },
  {
    'onsails/lspkind.nvim'
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      'hrsh7th/cmp-buffer',
      'onsails/lspkind.nvim',
      "hrsh7th/nvim-cmp"
    },
   opts = function(_, opts)
      local lspkind = require('lspkind')
      opts.formatting.format = lspkind.cmp_format({
          menu = ({
	        nvim_lsp = "[LSP]",
	        buffer = "[Buffer]",
	        luasnip = "[LuaSnip]",
	        path = "[path]",
        })
      })
      opts.sources = {
        { name = "nvim_lsp", group_index = 2},
        { name = "path", group_index = 2},
        { name = "buffer", group_index = 2},
        { name = "luasnip", group_index = 2}
      }
      return opts
    end,
  }
}
