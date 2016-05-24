 -----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


display.setStatusBar( display.HiddenStatusBar )

local options = {
	width = 64,
	height = 64,
	numFrames = 256,

	sheetContentWidth = 1024,
	sheetContentHeight = 1024,
}

local sheet = graphics.newImageSheet( 'dancers.png', options )

local sequenceData = {}

local w = 64
local h = 64
local halfW = w * 0.5
local halfH = h * 0.5





function createTileGroup(nx, ny)

	local group = display.newGroup( )
	
end




local nx = 2
local ny = 2
local group =  createTileGroup(nx, ny)

local prevTime = system.getTimer( )
local fps = display.newText( '30', 30, 47, nil, 24 )
fps:setFillColor( 1 )
fps.prevTime = prevTime


function enterFrame( event )
	local curTime = event.time
	local dt = curTime - prevTime
	prevTime = curTime
	if (curTime - fps.prevTime) > 100  then
		fps.text = string.format( '%.2f', 1000 / dt )
	end
end

Runtime:addEventListener( 'enterFrame', enterFrame )