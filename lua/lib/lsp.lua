-- language server protocol
local nvim_lsp = require "lspconfig"
local configs = require "lspconfig/configs"
local util = require "lspconfig/util"

local on_attach = function(client, bufnr)
  -- lspsaga
  require("lspsaga").init_lsp_saga()
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits"
  }
}

-- intelephense
nvim_lsp.intelephense.setup(
  {
    settings = {
      intelephense = {
        stubs = {
          "bcmath",
          "bz2",
          "calendar",
          "Core",
          "curl",
          "date",
          "dba",
          "dom",
          "enchant",
          "fileinfo",
          "filter",
          "ftp",
          "gd",
          "gettext",
          "hash",
          "iconv",
          "imap",
          "intl",
          "json",
          "ldap",
          "libxml",
          "mbstring",
          "mcrypt",
          "mysql",
          "mysqli",
          "password",
          "pcntl",
          "pcre",
          "Phar",
          "readline",
          "recode",
          "Reflection",
          "regex",
          "session",
          "SimpleXML",
          "soap",
          "sockets",
          "sodium",
          "SPL",
          "standard",
          "superglobals",
          "sysvsem",
          "sysvshm",
          "tokenizer",
          "xml",
          "xdebug",
          "xmlreader",
          "xmlwriter",
          "yaml",
          "zip",
          "zlib",
          "wordpress",
          "woocommerce",
          "acf-pro",
          "wordpress-globals",
          "wp-cli"
        },
        files = {
          maxSize = 5000000
        }
      }
    },
    capabilities = capabilities,
    on_attach = on_attach
  }
)

local function setup_servers()
  require "lspinstall".setup()

  -- get all installed servers
  local servers = require "lspinstall".installed_servers()

  for _, server in pairs(servers) do
    local config = {
      -- enable snippet support
      capabilities = capabilities,
      -- map buffer local keybindings when the language server attaches
      on_attach = on_attach
    }

    -- language specific config
    config.settings = lua_settings

    require "lspconfig"[server].setup(config)
  end
end

setup_servers()

-- define global function
_G.lsp_import_on_completion = function()
  local completed_item = vim.v.completed_item
  if not (completed_item and completed_item.user_data and
      completed_item.user_data.nvim and completed_item.user_data.nvim.lsp and
      completed_item.user_data.nvim.lsp.completion_item) then return end

  local item = completed_item.user_data.nvim.lsp.completion_item
  local bufnr = vim.api.nvim_get_current_buf()
  vim.lsp.buf_request(bufnr, "completionItem/resolve", item,
                  function(_, _, result)
      if result and result.additionalTextEdits then
          vim.lsp.util.apply_text_edits(result.additionalTextEdits, bufnr)
      end
  end)
end

-- define autocmd to listen for CompleteDone
vim.api.nvim_exec([[
augroup LSPImportOnCompletion
  autocmd!
  autocmd CompleteDone * lua lsp_import_on_completion()
augroup END
]], false)

-- Automatically reload after `:LspInstall <server>`
require "lspinstall".post_install_hook = function()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
