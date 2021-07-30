Platform = Object:extend()

function Platform:new()
	self.x = 0
	self.y = 505
	self.width = love.graphics.getWidth()
	self.height = love.graphics.getHeight()
end

function Platform:update(dt)

end

function Platform:draw()
	love.graphics.setColor(0, 1, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
