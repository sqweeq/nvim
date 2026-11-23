-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
--   pattern = "*",
--   command = "if mode() != 'c' | checktime | endif",
-- })
vim.api.nvim_create_autocmd("FileChangedShell", {
  pattern = "*",
  callback = function()
    vim.v.fcs_choice = ""
  end,
})
