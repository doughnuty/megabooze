Booze = Class{}


function Booze:init(x, y)
	self.image = love.graphics.newImage("src/sprites/booze.png");
	self.x = x;
	self.y = y;
	self.ang = 0;
end


function Booze:update(dt)
	self.ang = self.ang + dt/2;
end


function Booze:render()
	love.graphics.draw(self.image, self.x, self.y, self.ang, 1, 1, 64, 64);
end

