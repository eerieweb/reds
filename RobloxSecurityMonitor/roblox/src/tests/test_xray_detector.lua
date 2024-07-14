-- test_xray_detector.lua

local XRayDetector = require(game.ServerScriptService.XRayDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    xrayEnabled = true
}

-- Test functions
local function testDetectXRay()
    local detector = XRayDetector.new()
    local xrayEnabled = detector:detect(mockPlayerData)

    assert(xrayEnabled, "XRay detection should return true")
end

-- Run tests
testDetectXRay()
print("test_xray_detector.lua passed.")
