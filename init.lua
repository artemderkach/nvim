
vim.o.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

require'lspconfig'.zls.setup{}

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

