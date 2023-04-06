vim.g.mapleader = ' '

vim.opt.cursorline = true

local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)
vim.keymap.set("i", "kj", "<Esc>", options)

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.api.nvim_set_keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], options)
