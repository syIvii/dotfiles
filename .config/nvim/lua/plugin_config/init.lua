local packwrap = require("plugins/packwrap")

-- essentials are here because essentials
packwrap:AddPlugin("wbthomason/packer.nvim")
packwrap:AddPlugin("nvim-lua/plenary.nvim")

require("plugin_config/telescope")
require("plugin_config/luatree")
require("plugin_config/mason")
require("plugin_config/colorizer")
require("plugin_config/yuck")
require("plugin_config/theme")
require("plugin_config/treesitter")
require("plugin_config/whichkey")
require("plugin_config/lualine")
require("plugin_config/bufferline")
