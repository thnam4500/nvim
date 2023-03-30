require('go').setup()
vim.api.nvim_set_keymap('n', '<leader>fs', ':GoFillStruct<CR>', { noremap = true, silent = true })
