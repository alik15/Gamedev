function love.load()
	Object = require "classic"
	require "physics"
	require "platform"
	require "player"

	player = Player()
	plat = Platform(-400, 0 + player.height / 2, love.graphics.getWidth(), love.graphics.getHeight())
end

function love.update(dt)
	plat:update(dt, player)
	player:update(dt)
end

function love.keypressed(key)
	player:keypressed(key)
end

function love.draw()
	love.graphics.translate(love.graphics.getWidth()/2, love.graphics.getHeight()/2)
	--love.graphics.translate(player.x, love.graphics.getHeight()/2)
	plat:draw()
	player:draw()
end
