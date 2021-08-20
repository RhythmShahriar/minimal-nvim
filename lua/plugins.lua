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

  -- Explorer For Neovim
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Intellisense
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'

  -- Theme
  use 'gruvbox-community/gruvbox'
  use 'itchyny/lightline.vim'
  use 'norcalli/nvim-colorizer.lua'

  -- Better quickfix
  use 'kevinhwang91/nvim-bqf'

  -- Text Navigation
  use 'unblevable/quick-scope'
  
  -- Easymotion
  use 'airblade/vim-rooter'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

end)
