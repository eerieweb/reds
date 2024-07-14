-- roblox/src/logger.lua
local Logger = {}

function Logger:Log(message)
    print("[Logger] " .. message)
end

return Logger
