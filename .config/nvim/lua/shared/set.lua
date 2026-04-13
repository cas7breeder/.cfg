-- TODO: review, make sure VSCode has the same settings?
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Optional - whitespace rendering
vim.opt.list = true

vim.opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
}
