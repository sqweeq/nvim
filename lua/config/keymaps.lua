-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- https://vi.stackexchange.com/questions/39149/how-to-stop-neovim-from-yanking-text-on-pasting-over-selection
local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

map("x", "p", "P")

-- set C-j as esc instead
vim.keymap.set("i", "<C-j>", "<ESC>", { remap = true })
vim.keymap.set("n", "<C-j>", "<ESC>", { remap = true })
vim.keymap.set("v", "<C-j>", "<ESC>", { remap = true })

-- lua/config/keymaps.lua
-- Remove a specific keymap, e.g., leader key combo
-- remove delete hjkl
vim.keymap.set("o", "h", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "j", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "k", "<ESC>", { desc = "which_key_ignore" })
vim.keymap.set("o", "l", "<ESC>", { desc = "which_key_ignore" })

-- leader dashboard
vim.keymap.set("n", "<leader>D", function()
  vim.cmd("Dashboard")
end, { desc = "Dashboard" })

-- leader recent files
vim.keymap.set("n", "<leader>r", '<cmd>lua LazyVim.pick("oldfiles")()<cr>', { desc = " Recent Files" })
