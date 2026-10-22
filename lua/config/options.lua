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
vim.opt.clipboard = "" -- CRITICAL: Stops SSH from trying to poll your local system clipboard
vim.opt.cursorline = false -- Stops redrawing the highlighted bar under your cursor
-- vim.opt.relativenumber = false  -- Stops recalculating line numbers relative to the cursor on every step
-- vim.opt.lazyredraw = true -- Defers screen rendering so it doesn't fight for terminal bandwidth

-- The Safest Blend: Zero disk lag, but protected text
opt.swapfile = true -- Keep swap files on, but because XDG_STATE is in /tmp,
-- the swap file is written to RAM (ultra fast, no disk lag!)
opt.backup = false
opt.writebackup = false
opt.undofile = false -- Disabling this stops Neovim from writing undo files to disk
opt.updatetime = 4000 -- Flush changes to the RAM swapfile every 4 seconds instead of 400ms
