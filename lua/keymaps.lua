-- Leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- No hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- Formatter
vim.api.nvim_set_keymap('n', '<Leader>f', ':Format<CR>', { noremap = true, silent = true })

-- Explore
vim.api.nvim_set_keymap('n', '<Leader><TAB>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Better escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', { noremap = true, silent = true })

-- File finder
vim.api.nvim_set_keymap('n', '<C-p>', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })

-- Lspsaga
vim.api.nvim_set_keymap('n', 'K',  [[<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd',  [[<cmd>lua require'lspsaga.provider'.preview_definition()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t',  [[<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc><Esc>', [[<C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>]], {  noremap = true, silent = true })

-- Auto compeplete
vim.api.nvim_set_keymap('i', '<C-space>', 'compe#complete()', { expr = true })
vim.api.nvim_set_keymap('i', '<CR>', 'compe#confirm("<cr>")', { expr = true })
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
