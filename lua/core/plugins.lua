local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use "EdenEast/nightfox.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
  }

  use "ms-jpq/coq_nvim"
  use 'ms-jpq/coq.artifacts'
  use 'ms-jpq/coq.thirdparty'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup { disable_filetype = { "TelescopePrompt", "guihua",
        "guihua_rust", "clap_input" }, }
    end
  }

  -- use 'preservim/tagbar'
  use 'glepnir/dashboard-nvim'
  use "terrortylor/nvim-comment"
  use 'ray-x/navigator.lua'
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'
  -- use 'codota/tabnine-vim'
  use 'akinsho/toggleterm.nvim'
  use "alexghergh/nvim-tmux-navigation"
  use 'ms-jpq/chadtree'
  use 'xiyaowong/transparent.nvim'
  use 'EtiamNullam/deferred-clipboard.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
