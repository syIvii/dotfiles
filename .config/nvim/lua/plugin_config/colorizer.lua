local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("norcalli/nvim-colorizer.lua", function()
  require("colorizer").setup()
end)
