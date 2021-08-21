-- telescope
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      filetypes = {"png", "jpg", "mp4", "pdf"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
}