require('mason').setup({})
require("usual.lsp")
require("usual.packer")
require("usual.remap")
require("usual.set")

vim.g.neon_style = "doom"
vim.g.neon_transparent = true
vim.cmd.colorscheme 'neon'

vim.api.nvim_create_user_command("ReloadConfig", function()
  for name,_ in pairs(package.loaded) do
    if name:match("^usual") or name == "shared" then
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
