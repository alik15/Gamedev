function love.load()
	--deltatime
	dt = love.timer.getDelta() 
	
	--objects
	player = {}
	platform = {}
  
	--player 
	player.x = 20
	player.y = 200
	player.width = 60
	player.height = 120
  	
	--platform
	platform.x = 0
	platform.y = 500
	platform.width = love.graphics.getWidth()
	platform.height = love.graphics.getHeight()
end

function love.update(dt)
	player.speed = 150*dt

	--movement commands
	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    	player.x = player.x + player.speed
    elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    	player.x = player.x - player.speed
	end
  
	if love.keyboard.isDown('space') then 
      	player.y = player.y - 750*dt
    end

	--physics
	if platform.y >= player.y + 120 then
  		player.y = player.y + 300*dt
	end
	--player.y = player.y + 300*dt
	--if (player.y+120)> platform.y then 
  		--player.y= platform.y - 120
	--end
end

function love.draw()
	--drawing the objects into the screen
	love.graphics.rectangle("line", player.x, player.y, player.width, player.height)
	love.graphics.rectangle("fill", platform.x, platform.y, platform.width, platform.height)
end
