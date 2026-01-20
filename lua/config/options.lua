-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.list = false
opt.conceallevel = 0
-- then you need to set the option below.
-- vim.g.lazyvim_picker = "telescope"
-- vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_picker = "snacks"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--- Disable the inlay hints (additional information about types and parameters names) because it clutters my view
-- vim.g.lazyvim_no_inlay_hints = true
vim.g.snacks_animate = false
