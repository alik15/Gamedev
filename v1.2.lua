function love.load()
    	--deltatime
    	--dt = love.timer.getDelta() 

    	--objects
    	player = {}
    	platform = {}

    	--player 
    	player.x = 20
    	player.y = 385
    	player.width = 60
    	player.height = 120
    	player.speed = 3
	player.gravity = 5

    	--platform
    	platform.x = 0
    	platform.y = 500
    	platform.width = love.graphics.getWidth()
    	platform.height = love.graphics.getHeight()
end

function love.update(dt)
	player.velocity = 50

    	--movement commands
    	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    		player.x = player.x + player.speed
    	elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    		player.x = player.x - player.speed
    	end

    	--if love.keyboard.isDown('space') then 
    	  --    player.y = player.y - 750*dt
    	  --end

    	--physics
    	if platform.y >= player.y + player.height then
    		player.y = player.y + player.gravity
		grounded = false
	else
		grounded = true
	end

	if player.y > 185 and falling == false then
		player.gravity = -30
	elseif player.y < 285 then
		falling = true
		player.gravity = 5
	end
end

function love.keypressed(key, scancode, isrepeat)
    	--player.velocity = 50
    	if key == "space" and  platform.y <= player.y + player.height then
		falling = false
    	    	player.velocity = 10
		--while (player.y > 285) do
    	    	player.y = player.y - player.velocity
		--end
    	end
end

function love.draw()
    	--drawing the objects into the screen

    	--player
    	love.graphics.setColor(1,0,0)
    	love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)

    	--platform
    	love.graphics.setColor(0,1,0)
    	love.graphics.rectangle("fill", platform.x, platform.y, platform.width, platform.height)
	
	love.graphics.print(player.y, 50, 50)
	--love.graphics.print(player.velocity, 50, 100)
end
