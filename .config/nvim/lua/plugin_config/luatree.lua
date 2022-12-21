local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-tree/nvim-web-devicons")
packwrap:AddPlugin("nvim-tree/nvim-tree.lua", function()
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  require("nvim-tree").setup()
  vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)
end)
