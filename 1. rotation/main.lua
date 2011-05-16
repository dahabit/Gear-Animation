local gear = display.newImage( "gear.png" )

-- hello there lucas
gear.x = display.stageWidth / 2
gear.y = display.stageHeight / 2

local function animate( event )
 	gear.rotation = gear.rotation + 1
end

Runtime:addEventListener( "enterFrame", animate );
