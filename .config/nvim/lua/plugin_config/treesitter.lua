local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-treesitter/nvim-treesitter", function()
  require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua" }
  })
end)
