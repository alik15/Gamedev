function love.load()
	require (player.lua)
	require (platform.lua)
	require (physics.lua)
end

function love.update(dt)
	player.update(dt)
	platform.update(dt)
end

function love.draw()
	player.draw()
	platform.draw()
end
