-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")


vim.cmd [[ set noswapfile ]]
vim.opt.termguicolors = true

--Line numbers
vim.o.number = true
vim.o.relativenumber = true
