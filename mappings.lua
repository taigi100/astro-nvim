-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local cnt = 0
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<leader>s"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>op"] = { ":Telescope projects<cr>", desc = "Open projects dialog" },  -- change description but the same command,

    ["d"] = {'"_d', desc = "Delete without cut" },

    [";"] = {':', desc = "No more shift"},


    ["<Up>"] = {'<C-w>k', desc = "No more up"}, 
    ["<Down>"] = {'<C-w>j', desc = "No more down"},
    ["<Left>"] = {'<C-w>h', desc = "No more left"},
    ["<Right>"] = {'<C-w>l', desc = "No more right"},

    ["<leader>["] = { ':bprevious<CR>', desc = "Previous buffer"},
    ["<leader>]"] = { ':bnext<CR>', desc = "Next buffer"},

    ["<leader>e"] = { '<cmd>:Neotree filesystem<CR>', desc = "Toggle NeoTree"},
    ["<F6>"] = { '<cmd>:ToggleTerm<CR>', desc = "Toggle New Terminal"}, 
 
    ["<F8>"] = {
      function()
        cnt = cnt + 1;
        vim.cmd(tostring(cnt) ..'ToggleTerm<CR>');
      end
    },

    -- buffer switching
    ["<Tab>"] = {
      function()
        if #vim.t.bufs > 1 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        else
          astro_utils.notify "No other buffers open"
        end
      end,
      desc = "Switch Buffers",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<"] = { '<gv', desc = "Next buffer"},
    [">"] = { '>gv', desc = "Next buffer"},

  },
  i = {
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  }
}
