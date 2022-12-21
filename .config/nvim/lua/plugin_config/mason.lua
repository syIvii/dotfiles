local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("williamboman/mason.nvim", function()
  require("mason").setup()
end)

packwrap:AddPlugin("williamboman/mason-lspconfig.nvim", function()
  require("mason-lspconfig").setup({
    ensure_installed = { "luau_lsp" }
  })
end)

packwrap:AddPlugin("neovim/nvim-lspconfig", function()
  require("lspconfig").luau_lsp.setup({
    filetypes = { "luau", "lua" }
  })
end)
