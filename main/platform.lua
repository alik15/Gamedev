Platform = Object:extend()

function Platform:new(x, y, width, height)
	self.x = x
	self.y = y
	self.width = width
	self.height = height
end

function Platform:update(dt, player)
	--if physics.isCollide(self, player) then
	--	player.velocity = 0
	--	player.btmcoord = platform.y
	--	player.y = player.btmcoord - player.height
	--	collided = true
	--else
	--	collided = false
	--end
	
	if physics.isCollide(self, player) then
		collided = true
		barrier = self.y - player.height 
	else 
		collided = false
	end
end

function Platform:draw()
	love.graphics.setColor(0, 1, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)

	love.graphics.print(self.y, -375, -225)
	love.graphics.print(tostring(collided), -375, -200)
end
