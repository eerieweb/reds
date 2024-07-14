-- test_player_crash_detector.lua

local PlayerCrashDetector = require(game.ServerScriptService.PlayerCrashDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    crashDetected = true
}

-- Test functions
local function testDetectPlayerCrash()
    local detector = PlayerCrashDetector.new()
    local crashDetected = detector:detect(mockPlayerData)

    assert(crashDetected, "Player Crash detection should return true")
end

-- Run tests
testDetectPlayerCrash()
print("test_player_crash_detector.lua passed.")
