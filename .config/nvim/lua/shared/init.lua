vim.cmd [[packadd packer.nvim]]

require("shared.remap")
require("shared.set")
require("shared.packer")

local group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true })

-- Trim whitespace when saving file
local function trim()
  local view = vim.fn.winsaveview()

  vim.cmd([[%s/\s\+$//e]])
  vim.cmd([[%s/\n\+\%$//e]])
  -- convert NBSP to normal space
  vim.cmd([[%s/\%u00A0/ /ge]])

  vim.fn.winrestview(view)
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = "*",
  callback = trim,
})
