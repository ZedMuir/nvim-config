-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- Keep cursor centred while scrolling up and down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Set keymap for Markdown Preview
keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Start Markdown Preview" }) -- toggle file explorer

-- Zen mode
keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" })

-- Twilight
keymap.set("n", "<leader>tt", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Make file executable
keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- move lines/blocks of code
-- keymap.set("n", "<leader>cj", ":m .+1<CR>==", { desc = "Move line down 1 line" }) -- move line up(n)
-- keymap.set("n", "<leader>ck", ":m .-2<CR>==", { desc = "Move line up 1 line" }) -- move line down(n)
-- Move to window using the <ctrl> hjkl keys
keymap.del("n", "<C-h>")
keymap.del("n", "<C-j>")
keymap.del("n", "<C-k>")
keymap.del("n", "<C-l>")
