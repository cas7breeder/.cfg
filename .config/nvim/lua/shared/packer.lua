return function(use)
  use "wbthomason/packer.nvim"

  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup()
    end
  }
end
