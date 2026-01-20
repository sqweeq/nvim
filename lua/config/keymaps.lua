-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<C-j>", "<ESC>", { remap = true })
vim.keymap.set("n", "<C-j>", "<ESC>", { remap = true })
vim.keymap.set("v", "<C-j>", "<ESC>", { remap = true })

-- lua/config/keymaps.lua
-- Remove a specific keymap, e.g., leader key combo
vim.keymap.set("o", "h", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "j", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "k", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "l", "<ESC>", { desc = "which_key_ignore" })
