require("my_vscode_config.remap")
require("my_vscode_config.set")

local group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true })

-- Previous config
--vim.api.nvim_create_autocmd("BufWritePre", {
--  group = group,
--  pattern = "*",
--  callback = function()
--    -- remove trailing whitespace
--    vim.cmd([[%s/\s\+$//e]])
--    -- remove extra blank lines at end of file
--    vim.cmd([[%s/\n\+\%$//e]])
--  end,
--})

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
