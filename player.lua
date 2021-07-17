player = {}

function player.load()
    --objects  
  	player = {}
   	--player 
    	player.x = 20
    	player.y = 385
    	player.width = 60
    	player.height = 120
    	player.speed = 3
	    player.gravity = 5
      player.velocity = 0
      player.acceleration = 0


end

function player.update(dt)
  
  
  --movement commands
    	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    		player.x = player.x + player.speed
    	elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    		player.x = player.x - player.speed
    	end
      
      
  --Jump
       function love.keypressed(key, scancode, isrepeat)
          if  key == "space" and platform.y<= player.y +player.height then 
            player.velocity = -7
          end
       end

end

function player.draw()

end
