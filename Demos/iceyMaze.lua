--[[ Divided Maze ]]
ROT=require 'vendor/rotLove/rot'
function love.load()
	f =Display(80,24)
	im=IceyMaze:new(f:getWidth(), f:getHeight(), 0)
	im:create(calbak)
end
function love.update()
	love.timer.sleep(3)
	im=IceyMaze:new(f:getWidth(), f:getHeight(), ROT.RNG.twister:random()*5)
	im:create(calbak)
end
function love.draw() f:draw() end
function calbak(x,y,val)
	f:write(val==1 and '#' or '.', x, y)
end
--]]
