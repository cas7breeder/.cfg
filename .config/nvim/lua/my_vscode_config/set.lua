-- TODO: review, check with VSCode??
--vim.opt.nu = true
--vim.opt.relativenumber = true
-- Editor customization (relative line number, scrolloff, etc) is handled by VSCode

-- TODO: review, make sure VSCode has the same settings?
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Optional - whitespace rendering
vim.opt.list = true

vim.opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
}

-- VSCode will override these?
--vim.opt.hlsearch = false
--vim.opt.incsearch = true
