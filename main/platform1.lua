Platform1 = Platform:extend()

function Platform1:new(player, x, y, width, height)
	Platform1.super.new(self, x, y, width, height)
	self.x = -400
	--self.y = love.graphics.getHeight() / 2 + player.height / 2  
	self.y = 0 + player.height / 2
	self.width = love.graphics.getWidth()
	self.height = love.graphics.getHeight() 
end

function Platform1:update(dt)

end

function Platform1:draw()
	love.graphics.setColor(0, 1, 0)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
