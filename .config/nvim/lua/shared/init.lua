require("shared.remap")
require("shared.set")

local group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true })

-- Trim whitespace when saving file
local function trim()
  local view = vim.fn.winsaveview()

  vim.cmd([[%s/\s\+$//e]])
  vim.cmd([[%s/\n\+\%$//e]])

  vim.fn.winrestview(view)
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = "*",
  callback = trim,
})
