local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- My plugins here
  -- use 'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  "EdenEast/nightfox.nvim",
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },

  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",


  "ms-jpq/coq_nvim",
  'ms-jpq/coq.artifacts',
  'ms-jpq/coq.thirdparty',

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup { disable_filetype = { "TelescopePrompt", "guihua",
        "guihua_rust", "clap_input" }, }
    end
  },

  "fatih/vim-go",
  -- use 'preservim/tagbar'
  "terrortylor/nvim-comment",
  'akinsho/toggleterm.nvim',
  "alexghergh/nvim-tmux-navigation",
  'ms-jpq/chadtree',
}

local otps = {}
require("lazy").setup(plugins, otps)
