-- 1. Set your leader key FIRST (crucial for Which-Key and Telescope)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 2. Load your general settings
require("config.settings")

-- 3. Load your plugin manager
require("config.lazy")

-- 4. General Keymaps
vim.opt.autochdir = true
vim.opt.clipboard = "unnamedplus"

-- macOS specific Copy/Paste (Command+C / Command+V)
vim.keymap.set('v', '<D-c>', '"+y') 
vim.keymap.set('n', '<D-v>', '"+p')

-- Quick toggles
vim.keymap.set('n', '<M-e>', ':NvimTreeToggle<CR>')

-- Note: You don't technically need the Telescope keymaps here 
-- because we already added them to your whichkey.lua file!
