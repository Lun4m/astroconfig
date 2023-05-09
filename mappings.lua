-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["<leader>gj"] = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", desc = "Next Hunk" },
    ["<leader>gk"] = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", desc = "Prev Hunk" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>" },
    ["<leader>j"] = { name = "NvimIpy" },
    ["<leader>jo"] = { "<cmd>IPython<cr>", desc = "Run IPython inside nvim" },
    ["<leader>jp"] = {
      "<cmd>call jobstart('jupyter qtconsole --JupyterWidget.include_other_output=True --JupyterQtConsoleApp.hide_menubar=True') | :wincmd p<cr>",
      desc = "Run python QTconsole" },

    -- vim.cmd([[
    -- command! -nargs=0 RunQtConsole
    -- \ call jobstart('jupyter qtconsole --JupyterWidget.include_other_output=True --JupyterQtConsoleApp.hide_menubar=True') | :wincmd p
    -- ]])
    -- ["<leader>jk"] = { "<cmd>IPython --existing --no-window<cr>", desc = "Connect to existing kernel" },
    -- ["<leader>jc"] = { "<Plug>(IPy-RunCell)", desc = "Run current cell" },
    -- ["<leader>ja"] = { "<Plug>(IPy-RunAll)", desc = "Run all cells" },
  },
  v = {
    ["J"] = ":move '>+1<CR>gv-gv",
    ["K"] = ":move '<-2<CR>gv-gv",
    ["p"] = { '"_dP"', desc = "Keep same clipboard when pasting" },
  },
  t = {
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>" }
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
