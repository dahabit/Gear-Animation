local gear = display.newImage( "gear.png" )
local gear2 = display.newImage( "gear.png" )

gear.xScale = .5
gear.yScale = .5

gear2.xScale = .5
gear2.yScale = .5

gear.x = display.stageWidth / 4 + 25
gear.y = display.stageHeight / 2 - 50
gear2.x = gear.x + gear.stageWidth * .67
gear2.y = gear.y + gear.stageHeight * .67

gear2.rotation = 7

local function animate( event )
	gear.rotation = gear.rotation + 1
	gear2.rotation = gear2.rotation - 1
end

Runtime:addEventListener( "enterFrame", animate );
