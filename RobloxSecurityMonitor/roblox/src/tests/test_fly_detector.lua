-- test_fly_detector.lua

local FlyDetector = require(game.ServerScriptService.FlyDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    isFlying = true
}

-- Test functions
local function testDetectFly()
    local detector = FlyDetector.new()
    local isFlying = detector:detect(mockPlayerData)

    assert(isFlying, "Fly detection should return true")
end

-- Run tests
testDetectFly()
print("test_fly_detector.lua passed.")
