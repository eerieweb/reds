-- roblox/src/integration/email_integration.lua
local Config = require(script.Parent.config)
local Alert = require(script.Parent.utils.alert)

local EmailIntegration = {}

function EmailIntegration.SendEmail(subject, body)
    if Config.EMAIL_ALERT_ENABLED then
        -- Send an email
        Alert.SendAlert("Subject: " .. subject .. "\nBody: " .. body)
    end
end

return EmailIntegration
