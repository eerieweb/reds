-- roblox/src/detector/fly_detector.lua
local ExploitDetector = require(script.Parent.exploit_detector)

local FlyDetector = setmetatable({}, {__index = ExploitDetector})
FlyDetector.__index = FlyDetector

function FlyDetector.new()
    local self = setmetatable(ExploitDetector.new(), FlyDetector)
    return self
end

function FlyDetector:detect(player, reportCallback)
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        humanoidRootPart:GetPropertyChangedSignal("Position"):Connect(function()
            if humanoidRootPart.Position.Y > 500 then -- Example threshold
                reportCallback(player, "Fly")
            end
        end)
    end
end

return FlyDetector
