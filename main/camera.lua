Camera = Object:extend()

function Camera:new()
	self.x = love.graphics.getWidth()/2
	self.y = love.graphics.getHeight()/2

	self.speed = -3

end

function Camera:update(dt)
	--self.x = self.x + 1	
	
  
	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
		self.x = self.x + self.speed
    
   

 
	end
	if love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
		self.x = self.x - self.speed
	end
end

function Camera:draw()
	love.graphics.translate(self.x, self.y)	
end
