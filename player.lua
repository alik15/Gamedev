Player = Object:extend()

function Player:new()
	self.width = 60
	self.height = 60
	self.x = 0 - self.width / 2
	self.y = 0 - self.height / 2

	self.dbug = self.y

	self.speed = 3
	--self.gravity = 5

	self.velocity = 0
end

function Player:update(dt)
	if love.keyboard.isDown('d') or love.keyboard.isDown('right') then 
    		self.x = self.x + self.speed
	end
	if love.keyboard.isDown('a') or love.keyboard.isDown('left') then 
    		self.x = self.x - self.speed
    	end

	self.acceleration = 0.25
	self.velocity = self.velocity + self.acceleration
	self.y = self.y + self.velocity 

	--self.btmcoord = self.y + self.height
	--if physics.isCollide(self, platform) then
	--	self.velocity = 0
	--	self.btmcoord = platform.y
	--	self.y = self.btmcoord - self.height
	--	self.collided = true
	--else
	--	--self.gravity = 5
	--	self.collided = false
	--end

	if collided == true then
		self.velocity = 0
		--self.btmcoord = barrier
		local pushback = self.y - barrier 
		self.y = self.y - pushback
		--self.y = self.btmcoord - self.height
		--self.collided = true
	else
		--self.gravity = 5
		--self.collided = false
	end
end

function Player:keypressed(key)
	if key == "space" and collided == true then
		self.velocity = -10
		isjumped = true
		self.y = self.y - 10
		--self.y = 100
	end
end

function Player:draw()
	love.graphics.setColor(1, 0, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

	love.graphics.print(self.velocity, -375, -275)
	love.graphics.print(self.y, -375, -250)
end
