local Log = require "lvim.core.log"
local modules = {
    "keybindings.normal",
}
for _, module in ipairs(modules) do
    local ok, err = pcall(require, module)
    Log:info('loaded' .. module .. ': ' .. string.format('%s',ok))
    if not ok then
        error("Error loading " .. module .. "\n\n" .. err)
    end
end
local Log = require "lvim.core.log"
