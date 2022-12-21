local module = {}
local plugin_data = {}

function module:AddPlugin(plugin_name, config_function)
  table.insert(plugin_data, {
    plugin_name = plugin_name,
    config_function = config_function
  })
end

function module:Initialize()
  require("packer").startup(function(use)
    for _, data in ipairs(plugin_data) do
      use {
        data.plugin_name,
        config = data.config_function
      }
    end
  end)
end

return module
