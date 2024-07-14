-- roblox/src/utils/alert.lua
local Config = require(script.Parent.config)

local Alert = {}

function Alert.SendAlert(message)
    if Config.EMAIL_ALERT_ENABLED then
        -- Send alert via email
        -- Example: Send an email using a mail service API
    end
    -- Send other types of alerts if needed
end

return Alert
