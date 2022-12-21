local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-telescope/telescope.nvim", function()
  require("telescope").setup({
    pickers = {
      colorscheme = {
        enable_preview = true
      }
    }
  })
end)
