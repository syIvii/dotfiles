local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("moll/vim-bbye")
packwrap:AddPlugin("akinsho/bufferline.nvim", function()
  require("bufferline").setup()
  vim.keymap.set("n", "H", vim.cmd.BufferLineCyclePrev)
  vim.keymap.set("n", "L", vim.cmd.BufferLineCycleNext)
  vim.keymap.set("n", "Q", vim.cmd.Bdelete)
end)
