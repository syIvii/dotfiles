-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sylvia/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sylvia/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sylvia/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sylvia/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sylvia/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nï\1\0\0\5\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0006\4\3\0009\4\b\0049\4\v\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0006\4\3\0009\4\b\0049\4\r\4B\0\4\1K\0\1\0\fBdelete\6Q\24BufferLineCycleNext\6L\24BufferLineCyclePrev\bcmd\6H\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\nä\6\0\0\3\0\23\0Q6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\20\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0+\1\1\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0+\1\2\0=\1\16\0006\0\0\0009\0\1\0+\1\2\0=\1\17\0006\0\0\0009\0\1\0+\1\2\0=\1\18\0006\0\0\0009\0\1\0+\1\2\0=\1\19\0006\0\0\0009\0\1\0+\1\1\0=\1\20\0006\0\0\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\28doom_one_plugin_lspsaga#doom_one_plugin_vim_illuminate%doom_one_plugin_indent_blankline\29doom_one_plugin_whichkey\29doom_one_plugin_startify\30doom_one_plugin_dashboard\30doom_one_plugin_nvim_tree\27doom_one_plugin_neogit\30doom_one_plugin_telescope\27doom_one_plugin_barbar\26doom_one_plugin_neorg#doom_one_pumblend_transparency\29doom_one_pumblend_enable$doom_one_transparent_background$doom_one_diagnostics_text_color\31doom_one_enable_treesitter\29doom_one_italic_comments\29doom_one_terminal_colors\29doom_one_cursor_coloring\6g\bvim\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0À\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0À\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bâ–Œ\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bâ—\3\0\0\4\1!\0E5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\a\0-\1\0\0009\1\15\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\0\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\22\1=\1\23\0-\1\0\0009\1\22\1=\1\24\0-\1\0\0009\1\22\1=\1\25\0-\1\0\0009\1\0\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0005\1\31\0006\2\28\0009\2\29\0029\2\30\2B\2\1\0028\2\2\0=\2 \1L\1\2\0\3À\afg\1\0\0\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6S\6s\vorange\ano\6c\fmagenta\6V\5\6v\tblue\6i\ngreen\6n\1\0\0\bredŽ\a\1\0\t\0-\0]5\0\1\0005\1\0\0=\1\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\n\0005\1\v\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\f\0003\1\r\0003\2\14\0005\3\15\0\18\4\1\0005\6\20\0003\a\16\0>\a\1\0065\a\18\0009\b\17\3=\b\19\a=\a\21\0065\a\22\0=\a\23\6B\4\2\1\18\4\1\0005\6\26\0003\a\24\0>\a\1\0063\a\25\0=\a\21\0065\a\27\0=\a\23\6B\4\2\1\18\4\1\0005\6\28\0005\a\29\0=\a\23\6B\4\2\1\18\4\1\0005\6\30\0005\a\31\0=\a\23\6B\4\2\1\18\4\1\0005\6 \0005\a!\0=\a\23\6B\4\2\1\18\4\2\0005\6\"\0006\a#\0009\a$\a=\a%\0065\a'\0009\b&\3=\b\19\a=\a\21\6B\4\2\1\18\4\2\0005\6(\0B\4\2\1\18\4\2\0005\6)\0B\4\2\0016\4*\0'\6+\0B\4\2\0029\4,\4\18\6\0\0B\4\2\0012\0\0€K\0\1\0\nsetup\flualine\frequire\1\2\0\0\16diagnostics\1\2\0\0\vbranch\1\0\0\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\nright\3\1\tleft\3\1\1\2\0\0\rprogress\1\0\2\nright\3\1\tleft\3\0\1\2\0\0\rfilename\1\0\2\nright\3\1\tleft\3\1\1\2\1\0\rfiletype\14icon_only\2\1\0\2\nright\3\1\tleft\3\1\1\0\0\0\0\fpadding\1\0\2\nright\3\0\tleft\3\0\ncolor\1\0\0\afg\1\0\0\tblue\0\1\0\b\vorange\f#FF8800\bred\f#ff6c6b\vyellow\f#ECBE7B\tblue\f#51afef\vviolet\f#a9a1e1\fmagenta\f#c678dd\tcyan\f#008080\ngreen\f#98be65\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\2\23section_separators\5\25component_separators\5\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nj\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\2\0\0\rluau_lsp\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nj\0\0\4\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\3\0\0\tluau\blua\nsetup\rluau_lsp\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nË\1\0\0\5\0\r\0\0236\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\0\0009\4\v\0049\4\f\4B\0\4\1K\0\1\0\19NvimTreeToggle\bcmd\14<leader>t\6n\bset\vkeymap\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nm\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\2\0\0\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nx\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fpickers\1\0\0\16colorscheme\1\0\0\1\0\1\19enable_preview\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yuck.vim"] = {
    loaded = true,
    path = "/home/sylvia/.local/share/nvim/site/pack/packer/start/yuck.vim",
    url = "https://github.com/elkowar/yuck.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\nä\6\0\0\3\0\23\0Q6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\20\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0+\1\1\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0+\1\2\0=\1\16\0006\0\0\0009\0\1\0+\1\2\0=\1\17\0006\0\0\0009\0\1\0+\1\2\0=\1\18\0006\0\0\0009\0\1\0+\1\2\0=\1\19\0006\0\0\0009\0\1\0+\1\1\0=\1\20\0006\0\0\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\28doom_one_plugin_lspsaga#doom_one_plugin_vim_illuminate%doom_one_plugin_indent_blankline\29doom_one_plugin_whichkey\29doom_one_plugin_startify\30doom_one_plugin_dashboard\30doom_one_plugin_nvim_tree\27doom_one_plugin_neogit\30doom_one_plugin_telescope\27doom_one_plugin_barbar\26doom_one_plugin_neorg#doom_one_pumblend_transparency\29doom_one_pumblend_enable$doom_one_transparent_background$doom_one_diagnostics_text_color\31doom_one_enable_treesitter\29doom_one_italic_comments\29doom_one_terminal_colors\29doom_one_cursor_coloring\6g\bvim\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nj\0\0\4\0\a\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0005\3\4\0=\3\6\2B\0\2\1K\0\1\0\14filetypes\1\0\0\1\3\0\0\tluau\blua\nsetup\rluau_lsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nË\1\0\0\5\0\r\0\0236\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\0\0009\4\v\0049\4\f\4B\0\4\1K\0\1\0\19NvimTreeToggle\bcmd\14<leader>t\6n\bset\vkeymap\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nm\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\2\0\0\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nx\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\fpickers\1\0\0\16colorscheme\1\0\0\1\0\1\19enable_preview\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nj\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\2\0\0\rluau_lsp\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0À\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0À\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bâ–Œ\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bâ—\3\0\0\4\1!\0E5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\a\0-\1\0\0009\1\15\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\0\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\22\1=\1\23\0-\1\0\0009\1\22\1=\1\24\0-\1\0\0009\1\22\1=\1\25\0-\1\0\0009\1\0\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0005\1\31\0006\2\28\0009\2\29\0029\2\30\2B\2\1\0028\2\2\0=\2 \1L\1\2\0\3À\afg\1\0\0\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6S\6s\vorange\ano\6c\fmagenta\6V\5\6v\tblue\6i\ngreen\6n\1\0\0\bredŽ\a\1\0\t\0-\0]5\0\1\0005\1\0\0=\1\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\n\0005\1\v\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\f\0003\1\r\0003\2\14\0005\3\15\0\18\4\1\0005\6\20\0003\a\16\0>\a\1\0065\a\18\0009\b\17\3=\b\19\a=\a\21\0065\a\22\0=\a\23\6B\4\2\1\18\4\1\0005\6\26\0003\a\24\0>\a\1\0063\a\25\0=\a\21\0065\a\27\0=\a\23\6B\4\2\1\18\4\1\0005\6\28\0005\a\29\0=\a\23\6B\4\2\1\18\4\1\0005\6\30\0005\a\31\0=\a\23\6B\4\2\1\18\4\1\0005\6 \0005\a!\0=\a\23\6B\4\2\1\18\4\2\0005\6\"\0006\a#\0009\a$\a=\a%\0065\a'\0009\b&\3=\b\19\a=\a\21\6B\4\2\1\18\4\2\0005\6(\0B\4\2\1\18\4\2\0005\6)\0B\4\2\0016\4*\0'\6+\0B\4\2\0029\4,\4\18\6\0\0B\4\2\0012\0\0€K\0\1\0\nsetup\flualine\frequire\1\2\0\0\16diagnostics\1\2\0\0\vbranch\1\0\0\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\nright\3\1\tleft\3\1\1\2\0\0\rprogress\1\0\2\nright\3\1\tleft\3\0\1\2\0\0\rfilename\1\0\2\nright\3\1\tleft\3\1\1\2\1\0\rfiletype\14icon_only\2\1\0\2\nright\3\1\tleft\3\1\1\0\0\0\0\fpadding\1\0\2\nright\3\0\tleft\3\0\ncolor\1\0\0\afg\1\0\0\tblue\0\1\0\b\vorange\f#FF8800\bred\f#ff6c6b\vyellow\f#ECBE7B\tblue\f#51afef\vviolet\f#a9a1e1\fmagenta\f#c678dd\tcyan\f#008080\ngreen\f#98be65\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\2\23section_separators\5\25component_separators\5\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nï\1\0\0\5\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0006\4\3\0009\4\b\0049\4\v\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0006\4\3\0009\4\b\0049\4\r\4B\0\4\1K\0\1\0\fBdelete\6Q\24BufferLineCycleNext\6L\24BufferLineCyclePrev\bcmd\6H\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
