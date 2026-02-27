vim.opt.termguicolors = true
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.list = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- TODO replace with:
--vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
}

-- ?
--vim.opt.isfname:append("@-@")
--vim.opt.colorcolumn = "80"
