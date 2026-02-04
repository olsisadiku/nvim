vim.opt.clipboard = "unnamedplus"
vim.keymap.set('v', '<D-c>', '"+y') -- 'D' stands for Command key in Neovim
vim.keymap.set('n', '<D-v>', '"+p') -- Paste with Command + V
