-- test_esp_detector.lua

local ESPDetector = require(game.ServerScriptService.ESPDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    espEnabled = true
}

-- Test functions
local function testDetectESP()
    local detector = ESPDetector.new()
    local espEnabled = detector:detect(mockPlayerData)

    assert(espEnabled, "ESP detection should return true")
end

-- Run tests
testDetectESP()
print("test_esp_detector.lua passed.")
