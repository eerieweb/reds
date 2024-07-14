-- test_silent_aim_detector.lua

local SilentAimDetector = require(game.ServerScriptService.SilentAimDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    silentAimActive = true
}

-- Test functions
local function testDetectSilentAim()
    local detector = SilentAimDetector.new()
    local silentAimActive = detector:detect(mockPlayerData)

    assert(silentAimActive, "Silent Aim detection should return true")
end

-- Run tests
testDetectSilentAim()
print("test_silent_aim_detector.lua passed.")
