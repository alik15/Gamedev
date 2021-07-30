function love.load()
	Object = require "classic"
	require "physics"
	require "platform"
	require "player"

	plat = Platform()
	player = Player()
end

function love.update(dt)
	plat:update(dt)
	player:update(dt, plat)
end

function love.keypressed(key)
	player:keypressed(key)
end

function love.draw()
	plat:draw()
	player:draw()
end
