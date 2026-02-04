return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- The new version uses 'preset' to simplify setup (options: classic, modern, helix)
    preset = "classic", 
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = true,
        text_objects = true,
        windows = true,
        nav = true,
        z = true,
        g = true,
      },
    },
    win = {
      border = "rounded",
      position = "bottom",
      margin = { 1, 0, 1, 0 },
      padding = { 2, 2, 2, 2 },
    },
    layout = {
      align = "left",
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- NEW V3 SYNTAX: We use wk.add() and the new table format
    wk.add({
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
      { "<leader>k", "<cmd>bdelete<CR>", desc = "Kill Buffer" },
      { "<leader>p", "<cmd>Lazy<CR>", desc = "Plugin Manager" },
      { "<leader>q", "<cmd>wqall!<CR>", desc = "Quit" },
      { "<leader>w", "<cmd>w!<CR>", desc = "Save" },

      -- Group: File Search
      { "<leader>f", group = "File Search" },
      { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
      { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find files" },
      { "<leader>ft", "<cmd>Telescope live_grep <cr>", desc = "Find Text Pattern" },
      { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },

      -- Group: Search
      { "<leader>s", group = "Search" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
      { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      { "<leader>sr", "<cmd>Telescope registers<cr>", desc = "Registers" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
      { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
    })
  end,
}

