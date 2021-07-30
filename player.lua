Player = Object:extend()

function Player:new()
	self.x = 20
	self.y = 100
	self.width = 60
	self.height = 120

	self.speed = 3
	--self.gravity = 5

	self.velocity = 0
end

function Player:update(dt, platform)
	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    		self.x = self.x + self.speed
    	elseif love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    		self.x = self.x - self.speed
    	end

	self.acceleration = 0.09
	self.velocity = self.velocity + self.acceleration
	self.y = self.y + self.velocity 

	if physics.isCollide(self.x,self.y,self.width,self.height, platform.x,platform.y,platform.width,platform.height) then
		self.velocity = 0
		self.y = 385
		self.collided = true
	else
		--self.gravity = 5
		self.collided = false
	end
end

function Player:keypressed(key)
	if key == "space" and self.collided == true then
		self.velocity = -7
		--self.y = 100
	end
end

function Player:draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

	love.graphics.print(self.y + self.height, 50, 50)
end
