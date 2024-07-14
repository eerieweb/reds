-- test_noclip_detector.lua

local NoClipDetector = require(game.ServerScriptService.NoClipDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    noclipActive = true
}

-- Test functions
local function testDetectNoClip()
    local detector = NoClipDetector.new()
    local noclipActive = detector:detect(mockPlayerData)

    assert(noclipActive, "NoClip detection should return true")
end

-- Run tests
testDetectNoClip()
print("test_noclip_detector.lua passed.")
