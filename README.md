# Minimal nVIM

Minimal nVIM (neovim) — configured in `Lua` (works on Linux and should work on Windows/macOS but yet to test).

## Install Instructions

##### Run the script with **sudo** 
```
sudo wget -O - https://raw.githubusercontent.com/RhythmShahriar/nvim-conf/master/setup.sh | bash
```

This script will perform the following executions
- Remove old vim/nvim from your machine
- Install **nvim** version `0.5`
- Clone the nvim-conf folder as `~/.config/nvim`
- Install Node.JS version `14.*` with `npm` *(required for prettier)*
- Install prettier globally
- Install all the vim **plugins**
- Source the configrations

## Installed Plugins

|Plugins                   |Description                                                                                                                                                                         |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|[Packer](https://github.com/wbthomason/packer.nvim)                                        |Plugin/package management for Neovim |
|[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)                       |A `lua` fork of vim-devicons. This plugin provides the same icons as well as colors for each icon |
|[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                               |A File Explorer For Neovim Written In `lua` |
|[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                      |Treesitter configurations and abstraction layer for Neovim. |
|[popup.nvim](https://github.com/nvim-lua/popup.nvim)                                       |An implementation of the Popup API from vim in Neovim. |
|[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                                   |All the `lua` functions I don't want to write twice. |
|[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                         |A highly extendable fuzzy finder over lists. Built on the latest awesome features from `neovim` core |
|[telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim) |Preview images, pdf, epub, video, and fonts from Neovim using Telescope. |
|[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                                 |A collection of common configurations for Neovim's built-in language server client. |
|[nvim-lspinstall](https://github.com/kabouzeid/nvim-lspinstall)                            |This is a very lightweight companion plugin for nvim-lspconfig. It adds the missing ` :LspInstall <language>` command to conveniently install language servers. |
|[nvim-compe](https://github.com/hrsh7th/nvim-compe)                                        |Auto completion plugin for nvim. |
|[vim-vsnip](https://github.com/hrsh7th/vim-vsnip)                                          |VSCode(LSP)'s snippet feature in vim. |
|[lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)                                    |A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI. |
|[lspkind-nvim](https://github.com/onsails/lspkind-nvim)                                    |This tiny plugin adds vscode-like pictograms to neovim built-in lsp. |
|[nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)                               |VSCode bulb for neovim's built-in LSP. |
|[nvim-dap](https://github.com/mfussenegger/nvim-dap)                                       |A Debug Adapter Protocol client implementation for `Neovim (>= 0.5)` |
|[gruvbox](https://github.com/gruvbox-community/gruvbox)                                    |gruvbox is heavily inspired by badwolf, jellybeans and solarized. |
|[lualine.nvim](https://github.com/hoob3rt/lualine.nvim)                                    |A blazing fast and easy to configure neovim statusline written in pure lua.  |
|[colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)                            |A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit. |
|[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)                 |This plugin adds indentation guides to all lines (including empty lines). |
|[vim match-up](https://github.com/andymass/vim-matchup)                                    |match-up is a plugin that lets you highlight, navigate, and operate on sets of matching text. |
|[neoscroll](https://github.com/karb94/neoscroll.nvim)                                      |A smooth scrolling neovim plugin written in lua |
|[nvim-autopairs](https://github.com/windwp/nvim-autopairs)                                 |A super powerful autopairs for Neovim. It support multiple character. |
|[nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)                               |Use treesitter to autoclose and autorename html tag  |
|[Zen Mode](https://github.com/folke/zen-mode.nvim)                                         |Distraction-free coding for Neovim >= 0.5  |
|[formatter.nvim](https://github.com/mhartington/formatter.nvim)                            |A format runner for neovim, written in lua. |
|[nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)                                       |The goal of nvim-bqf is to make Neovim's quickfix window better. |
|[Rooter](https://github.com/airblade/vim-rooter)                                           |Rooter changes the working directory to the project root when you open a file or directory.  |
|[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                                |Super fast git decorations implemented purely in lua/teal.  |

## Shortcuts

| Keymaps           | Execution        | Mode       |
| ----------------- | ----------------------------------------------------------------------- |--------------------------- |
| `<space>`   | Use space bar as leader | `Normal` |
| `<space>`+`h`   | `:set hlsearch` |  `Normal` |
| `<space>`+`f`   | `:Format` format the code   |  `Normal` |
| `<space>`+`<Tab>`   | `:NvimTreeToggle` toggle the file explorer |  `Normal` |
| `<ctrl>`+`h`   | Move to **Left** window |  `Normal` |
| `<ctrl>`+`j`   | Move to **Bottom** window |  `Normal` |
| `<ctrl>`+`k`   | Move to **Top** window | `Normal` |
| `<ctrl>`+`l`   | Move to **Right** window |  `Normal` |
| `<ctrl>`+`l`   | Move to **Right** window |  `Normal` |
| `j`+`k` or `k`+`j` or `j`+`j`   | `<Esc>` alternatives | `All` |
| `<Tab>`   | Move to next tab | `All` |
| `<Shift>` + `<Tab>`   | Move to previous tab | `All` |
| `K`   | Move selected text/block top | `Visual` |
| `J`   | Move selected text/block bottom | `Visual` |
| `<ctrl>`+`p`   | Toggle file finder | `All` |
| `<space>`+`fb`   | Open the buffer | `All` |
| `<space>`+`fh`   | Open the help tag | `All` |
| `<space>`+`fg`   | Open the live grep | `All` |
| `K`   | Preview documentation | `normal` |
| `g`+`d`   | Preview definition | `normal` |
| `<space>`+`t`   | Open floating terminal | `normal` |
| `<Esc>`+`<Esc>`   | Close floating terminal | `normal` |