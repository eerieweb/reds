-- test_kill_all_detector.lua

local KillAllDetector = require(game.ServerScriptService.KillAllDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    killAllActive = true
}

-- Test functions
local function testDetectKillAll()
    local detector = KillAllDetector.new()
    local killAllActive = detector:detect(mockPlayerData)

    assert(killAllActive, "Kill All detection should return true")
end

-- Run tests
testDetectKillAll()
print("test_kill_all_detector.lua passed.")
