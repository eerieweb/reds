-- roblox/src/utils/report.lua
local HttpService = game:GetService("HttpService")
local Config = require(script.Parent.config)

local Report = {}

function Report.SendReport(reportData)
    local jsonData = HttpService:JSONEncode(reportData)
    HttpService:PostAsync(Config.WEBHOOK_URL, jsonData, Enum.HttpContentType.ApplicationJson)
end

return Report
