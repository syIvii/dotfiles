local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-lualine/lualine.nvim", function()
  local config = {
    options = {
        component_separators = '',
        section_separators = '',
      },

    sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        -- These will be filled later
        lualine_c = {},
        lualine_x = {},
      },
      inactive_sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
  }

  local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
  end

  -- Inserts a component in lualine_x ot right section
  local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
  end

  local colors = {
    blue = "#51afef",
    red = "#ff6c6b",
    green = "#98be65",
    magenta = "#c678dd",
    orange = "#FF8800",
    yellow = "#ECBE7B",
    violet = "#a9a1e1",
    cyan = "#008080"
  }

  ins_left {
    function()
      --return '▊'
      return '▌'
    end,
    color = { fg = colors.blue },
    padding = { left = 0, right = 0 }
  }

  ins_left {
    function()
      return '●'
    end,
    color = function()
      local mode_color = {
        n = colors.red,
        i = colors.green,
        v = colors.blue,
        [''] = colors.blue,
        V = colors.blue,
        c = colors.magenta,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.violet,
        Rv = colors.violet,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.red,
        t = colors.red,
      }
      return { fg = mode_color[vim.fn.mode()] }
    end,
    padding = { left = 1, right = 1 }
  }

  ins_left {
    'filetype',
    icon_only = true,
    padding = { left = 1, right = 1 }
  }

  ins_left {
    'filename',
    padding = { left = 0, right = 1}
  }

  ins_left {
    'progress',
    padding = { left = 1, right = 1 }
  }

  ins_right {
    'o:encoding',
    fmt = string.upper,
    color = { fg = colors.green }
  }

  ins_right {
    'branch'
  }

  ins_right {
    'diagnostics'
  }

  require("lualine").setup(config)
end)
