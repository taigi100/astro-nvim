require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    -- ensure_installed = { "lua" },
  },
}
