Ship = Class{}


function Ship:init(ox, oy, rad)
	self.image = love.graphics.newImage("src/sprites/ship.png");
	self.ox = ox;
	self.oy = oy;
	self.ang = 0;
	self.rad = rad;
	self.x = self.rad * math.sin(self.ang) + self.ox;
	self.y = self.rad * math.cos(self.ang) + self.oy;
end


function Ship:update(dt)
	if love.keyboard.isDown('left') then
		self.ang = self.ang - 2*dt;
		recalculatePosition(self);
	elseif love.keyboard.isDown('right') then
		self.ang = self.ang + 2*dt;
		recalculatePosition(self);
	end
end


function Ship:render()
	love.graphics.draw(self.image, self.x, self.y, -self.ang, 1, 1, 32, 32);
end

--	local functions	--

function recalculatePosition(self)
	self.x = self.rad * math.sin(self.ang) + self.ox;
	self.y = self.rad * math.cos(self.ang) + self.oy;
end

