require('deferred-clipboard').setup {
  lazy = true,
}
vim.keymap.set('n', 'X', function()
  require('deferred-clipboard').write()
end)
