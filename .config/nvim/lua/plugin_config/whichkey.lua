local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("folke/which-key.nvim", function()
  require("which-key").setup()
end)
