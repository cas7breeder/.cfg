vim.g.mapleader = " "

vim.keymap.set("n", "<M-q>", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>s", "<cmd>w<CR>")
vim.keymap.set("n", "<M-n>", "<cmd>enew<CR>")
vim.keymap.set("n", "<leader>c", "<C-w>x")

vim.keymap.set("v", "<leader>j", "<cmd>'<,'>join<CR>")

-- File view mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Delete highlighted text into the void register and then paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Replace the word that the cursor is on
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Reload config
vim.keymap.set("n", "<leader>R", "<cmd>ReloadConfig<CR>")

-- Improve split window navigation
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- Split window like in vscode
vim.keymap.set("n", "<leader>v", "<cmd>vsp<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>sp<CR>")

-- For tmux
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Quick Fix navigation
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
