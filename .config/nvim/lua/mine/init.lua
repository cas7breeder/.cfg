require("mine.remap")
require("mine.set")
require("mine.packer")

vim.g.neon_style = "doom"
vim.g.neon_transparent = true
vim.cmd.colorscheme 'neon'

local group = vim.api.nvim_create_augroup("TrimWhitespace", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = "*",
  callback = function()
    -- remove trailing whitespace
    vim.cmd([[%s/\s\+$//e]])
    -- remove extra blank lines at end of file
    vim.cmd([[%s/\n\+\%$//e]])
  end,
})

vim.api.nvim_create_user_command("ReloadConfig", function()
  for name,_ in pairs(package.loaded) do
    if name:match("^mine") then
      package.loaded[name] = nil
    end
  end
  vim.cmd("source $MYVIMRC")
end, {})

-- Other fine options for color schemes
-- https://github.com/olivercederborg/poimandres.nvim
--vim.cmd.colorscheme 'poimandres'

-- https://github.com/rafamadriz/neon
-- doom/dark/light

-- https://github.com/marko-cerovac/material.nvim
-- daker/lighter/oceanic/palenight/deep ocean/
--vim.g.material_style = "deep ocean"
--vim.cmd 'colorscheme material'

-- https://github.com/AlexvZyl/nordic.nvim
--vim.cmd.colorscheme 'nordic'
