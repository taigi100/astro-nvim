return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
--  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  -- {

  --   "ahmedkhalf/project.nvim",
  --   event = "VeryLazy",
  --   opts = { ignore_lsp = { "lua_ls" }, show_hidden = true, patterns = { "=nestegg-go-webapp", "=nestegg-webapp-admin-dashboard", "=apex-engine", "=nest-egg", "package.json" } },
  --   config = function(_, opts) require("project_nvim").setup(opts) end,
  -- },
  -- { "nvim-telescope/telescope.nvim", opts = function() require("telescope").load_extension "projects" end }, 
}

