require("shared")

if vim.g.vscode then
    -- VSCode context config
    require("my_vscode_config")
else
    -- ordinary Neovim config
    require("usual")
end
