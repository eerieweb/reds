-- test_fov_change_detector.lua

local FOVChangeDetector = require(game.ServerScriptService.FOVChangeDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    fovChanged = true
}

-- Test functions
local function testDetectFOVChange()
    local detector = FOVChangeDetector.new()
    local fovChanged = detector:detect(mockPlayerData)

    assert(fovChanged, "FOV Change detection should return true")
end

-- Run tests
testDetectFOVChange()
print("test_fov_change_detector.lua passed.")
