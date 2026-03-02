local ts = require("nvim-treesitter")

ts.install({
  "go","bash","terraform","lua",
  "python","vim","vimdoc","query",
  "yaml","dockerfile",
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
    -- disables regex highlighting
    vim.bo[args.buf].syntax = ""
  end,
})
