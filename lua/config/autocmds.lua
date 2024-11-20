-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local vim = vim
local api = vim.api

-- local format_group = api.nvim_create_augroup("FormatGroup", { clear = true })(
-- [[ api.nvim_create_autocmd(
--   { "BufReadPost", "FileReadPost", "BufWinEnter" },
--   { pattern = "*", command = "normal zR", group = format_group }
-- ) ]])

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { pattern = "*.norg", command = "set conceallevel=2" })
