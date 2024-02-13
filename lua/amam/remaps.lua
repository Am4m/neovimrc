local keymap = vim.keymap
-- Leader key
vim.g.mapleader = " "
keymap.set('n', '<C-a>', 'gg<S-v>G')
