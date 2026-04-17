local use = require("packer").use

require("packer").startup(function(use)
  require("shared.packer")(use)

  if not vim.g.vscode then
    require("usual.packer")(use)
  end
end)

require("shared")

if vim.g.vscode then
    -- VSCode context config
    require("my_vscode_config")
else
    -- ordinary Neovim config
    require("usual")
end
