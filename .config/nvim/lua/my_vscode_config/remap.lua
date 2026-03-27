vim.g.mapleader = " "

-- Disable Ex mode
vim.keymap.set("n", "Q", "<nop>")

-- Keep the cursor in the middle when jumping half page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep the cursor in the middle when jumping full page up/down
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- Search results stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete highlighted text into the void register and then paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Move selected lines up/down with J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clipboad management https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
--vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])
--vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Replace the word that the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
