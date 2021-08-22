-- Setup the Packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Explorer
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'

  -- Intellisense
  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/nvim-compe'
  use 'onsails/lspkind-nvim'
  use 'mfussenegger/nvim-jdtls'
  use 'hrsh7th/vim-vsnip'

  -- Appearance
  use 'rktjmp/lush.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'hoob3rt/lualine.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'andymass/vim-matchup'
  use 'karb94/neoscroll.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'folke/zen-mode.nvim'
  use 'mhartington/formatter.nvim'

  -- Better quickfix
  use 'kevinhwang91/nvim-bqf'

  -- Easymotion
  use 'airblade/vim-rooter'

  -- Git
  use 'lewis6991/gitsigns.nvim'

end)
