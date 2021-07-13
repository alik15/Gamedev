function love.load()
    	

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
      player.velocity = 0
      player.acceleration = 0

    	--platform
    	platform.x = 0
    	platform.y = 500
    	platform.width = love.graphics.getWidth()
    	platform.height = love.graphics.getHeight()
end

function love.update(dt)
	
  

    	--movement commands
    	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    		player.x = player.x + player.speed
    	elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    		player.x = player.x - player.speed
    	end


      --physics
   
       --Gravity
       player.velocity = player.velocity+player.acceleration 
       player.y = player.y+ player.velocity
       player.acceleration = 0.09

       --Stops the player from going below the ground
       if platform.y<= player.y +player.height then
         player.velocity = 0
         player.acceleration = 0
       end
    
       --Jump
       function love.keypressed(key, scancode, isrepeat)
          if  key == "space" and platform.y<= player.y +player.height then 
            player.velocity = -7
          end
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