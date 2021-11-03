local modules = {
    "core",
}
for _, module in ipairs(modules) do
    local ok, err = pcall(require, module)
    print('loaded' .. module .. ': ' .. string.format('%s',ok))
    if not ok then
        error("Error loading " .. module .. "\n\n" .. err)
    end
end

