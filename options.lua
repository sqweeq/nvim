-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- https://vi.stackexchange.com/questions/39149/how-to-stop-neovim-from-yanking-text-on-pasting-over-selection
local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

map("x", "p", "P")

vim.opt.list = false

vim.opt.clipboard = "" -- CRITICAL: Stops SSH from trying to poll your local system clipboard
vim.opt.cursorline = false -- Stops redrawing the highlighted bar under your cursor
vim.opt.relativenumber = false -- Stops recalculating line numbers relative to the cursor on every step
vim.opt.lazyredraw = true -- Defers screen rendering so it doesn't fight for terminal bandwidth
