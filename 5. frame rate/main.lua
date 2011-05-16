local ui = require("ui")

local background = display.newImage("book.jpg")

local gear = display.newImage( "gear.png" )
local gear2 = display.newImage( "gear.png" )

gear.xScale = .5
gear.yScale = .5

gear2.xScale = .5
gear2.yScale = .5

local centerX = display.stageWidth / 2
local centerY = display.stageHeight / 2

local radius = (gear.stageWidth / 2)
local xOffset = radius * math.cos( math.rad( 45 ) ) - 2
local yOffset = radius * math.sin( math.rad( 45 ) ) - 2

gear.x = centerX - xOffset
gear.y = centerY - yOffset
gear2.x = centerX + xOffset
gear2.y = centerY + yOffset

gear2.rotation = 7
local rotateAmount = 1

local time = system.getTimer()

local function animate( event )
	local now = system.getTimer()
	local elapsed = now - time

	local rotationAngle = rotateAmount * (elapsed / 1000.0) * 10
	
	time = now
	
	gear.rotation = gear.rotation + rotationAngle
	gear2.rotation = gear2.rotation - rotationAngle
end

Runtime:addEventListener( "enterFrame", animate );

local buttonHandler = function( event )
	if event.phase == "release" then
		if event.id == "stop" then
			rotateAmount = 0
		elseif event.id == "+1" then
			rotateAmount = rotateAmount + 1
		elseif event.id == "-1" then
			rotateAmount = rotateAmount - 1
		elseif event.id == "reverse" then
			rotateAmount = rotateAmount * -1
		end
	end
end

local button1 = ui.newButton{
	default = "buttonGray.png",
	over = "buttonGrayOver.png",
	onEvent = buttonHandler,
	text = "Stop",
	id = "stop",
	size = 12,
	emboss = true
}

local button2 = ui.newButton{
	default = "buttonGray.png",
	over = "buttonGrayOver.png",
	onEvent = buttonHandler,
	text = "+1",
	id = "+1",
	size = 12,
	emboss = true
}

local button3 = ui.newButton{
	default = "buttonGray.png",
	over = "buttonGrayOver.png",
	onEvent = buttonHandler,
	text = "-1",
	id = "-1",
	size = 12,
	emboss = true
}

local button4 = ui.newButton{
	default = "buttonGray.png",
	over = "buttonGrayOver.png",
	onEvent = buttonHandler,
	text = "Reverse",
	id = "reverse",
	size = 12,
	emboss = true
}

button1.x = (display.stageWidth / 4 * 1) - display.stageWidth / 8; button1.y = display.stageHeight - 20
button2.x = (display.stageWidth / 4 * 2) - display.stageWidth / 8; button2.y = display.stageHeight - 20
button3.x = (display.stageWidth / 4 * 3) - display.stageWidth / 8; button3.y = display.stageHeight - 20
button4.x = (display.stageWidth / 4 * 4) - display.stageWidth / 8; button4.y = display.stageHeight - 20
