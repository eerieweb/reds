-- roblox/src/integration/discord_integration.lua
local HttpUtil = require(script.Parent.utils.http_service)
local Config = require(script.Parent.config)

local DiscordIntegration = {}

function DiscordIntegration.SendToDiscord(message)
    local jsonData = HttpUtil.Encrypt(message)
    HttpUtil.Post(Config.DISCORD_WEBHOOK_URL, jsonData)
end

return DiscordIntegration
