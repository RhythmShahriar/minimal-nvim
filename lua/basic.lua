-- behavior of tab
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smarttab = true

-- numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'

-- better format
vim.o.colorcolumn = '80'
vim.o.cursorline = false

-- utils
vim.o.swapfile = false
vim.o.backup = false
vim.o.autoread = true
vim.o.encoding = 'UTF-8'
vim.o.guifont= 'Hack\\ Nerd\\ Font\\ Mono\\ Regular\\ 11'
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.laststatus = 2
vim.o.clipboard = 'unnamedplus'

-- undo files
vim.o.undodir = '~/.vim/undodir'
vim.o.undofile = true

-- text wrapping
vim.o.wrap = false
vim.o.wrapmargin = 8
vim.o.linebreak = true
vim.o.smartindent = true

-- colorscheme
vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])
