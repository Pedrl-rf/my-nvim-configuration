-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Atajo para formatear con Prettier
vim.api.nvim_set_keymap('n', '<leader>p', ':Prettier<CR>', { noremap = true, silent = true })
-- Atajo para salir del modo terminal usando ESC
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

