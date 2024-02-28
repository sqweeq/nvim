-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- https://vi.stackexchange.com/questions/39149/how-to-stop-neovim-from-yanking-text-on-pasting-over-selection
local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

map("x", "p", "P")

vim.opt.list = false
