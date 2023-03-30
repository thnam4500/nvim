require("toggleterm").setup {
  size = function(term)
    if term.direction == "horizontal" then
      return 10
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.2
    end
  end,

  close_on_exit = true,
  direction = 'float',
  open_mapping = [[<c-\>]]
}
