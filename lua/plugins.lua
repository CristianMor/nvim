local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer no esta instalado")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use "L3MON4D3/LuaSnip" -- Snippet
	use "feline-nvim/feline.nvim" -- Neovim estatus baar
  use 'onsails/lspkind-nvim' -- vscode-like pirctograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for burffer words
	use "hrsh7th/cmp-path" -- path completacion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completation
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
end)
