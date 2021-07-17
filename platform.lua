platform = {}

function platform.load()
  
     --objects
     platform = {}
    	--platform
    	platform.x = 0
    	platform.y = 500
    	platform.width = love.graphics.getWidth()
    	platform.height = love.graphics.getHeight()

end

function platform.update(dt)

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
