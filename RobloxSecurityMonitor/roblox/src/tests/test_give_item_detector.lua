-- test_give_item_detector.lua

local GiveItemDetector = require(game.ServerScriptService.GiveItemDetector)
local TestService = require(game.ServerScriptService.TestService) -- Mock or actual test service

-- Mock player data
local mockPlayerData = {
    itemGiven = true
}

-- Test functions
local function testDetectGiveItem()
    local detector = GiveItemDetector.new()
    local itemGiven = detector:detect(mockPlayerData)

    assert(itemGiven, "Give Item detection should return true")
end

-- Run tests
testDetectGiveItem()
print("test_give_item_detector.lua passed.")
