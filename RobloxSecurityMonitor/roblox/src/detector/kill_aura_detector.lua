-- roblox/src/detector/kill_aura_detector.lua
local ExploitDetector = require(script.Parent.exploit_detector)

local KillAuraDetector = setmetatable({}, {__index = ExploitDetector})
KillAuraDetector.__index = KillAuraDetector

function KillAuraDetector.new()
    local self = setmetatable(ExploitDetector.new(), KillAuraDetector)
    return self
end

function KillAuraDetector:detect(player, reportCallback)
    local function onCharacterAdded(character)
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:GetPropertyChangedSignal("Health"):Connect(function()
                if humanoid.Health < humanoid.MaxHealth then
                    reportCallback(player, "KillAura")
                end
            end)
        end
    end

    player.CharacterAdded:Connect(onCharacterAdded)
end

return KillAuraDetector