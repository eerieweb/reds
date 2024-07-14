-- roblox/src/utils/http_service.lua
local HttpService = game:GetService("HttpService")

local HttpUtil = {}

function HttpUtil.Get(url)
    local success, response = pcall(function()
        return HttpService:GetAsync(url)
    end)
    if success then
        return response
    else
        warn("HTTP GET failed: " .. response)
        return nil
    end
end

function HttpUtil.Post(url, data)
    local success, response = pcall(function()
        return HttpService:PostAsync(url, data, Enum.HttpContentType.ApplicationJson)
    end)
    if success then
        return response
    else
        warn("HTTP POST failed: " .. response)
        return nil
    end
end

return HttpUtil
