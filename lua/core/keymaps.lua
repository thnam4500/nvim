vim.g.mapleader = ' '

vim.opt.cursorline = true

local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)
vim.keymap.set("i", "kj", "<Esc>", options)

