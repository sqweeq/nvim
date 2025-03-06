-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- https://vi.stackexchange.com/questions/39149/how-to-stop-neovim-from-yanking-text-on-pasting-over-selection
local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

map("x", "p", "P")

local opt = vim.opt
opt.list = false
opt.conceallevel = 0
-- then you need to set the option below.
vim.g.lazyvim_picker = "telescope"
--- Disable the inlay hints (additional information about types and parameters names) because it clutters my view
-- vim.g.lazyvim_no_inlay_hints = true
vim.g.snacks_animate = false
-- LazyVim Changelog
vim.keymap.set("n", "<leader>D", function()
  vim.cmd("Dashboard")
end, { desc = "Dashboard" })
