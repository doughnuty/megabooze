
function love.load()
	ship = love.graphics.newImage("src/ship.png");
	booze = love.graphics.newImage("src/booze.png");

	boozeangle = 0;
	
	ox = love.graphics.getWidth()/2; -- center
	oy = love.graphics.getHeight()/2;

	point_r = ox/2; -- pxl radius
	point_t = 0;  -- start angle
end

function love.update(dt)
	shipmovement(dt);
	boozeangle = boozeangle + dt;
end

function love.draw()
	love.graphics.draw(booze, ox, oy, boozeangle, 1, 1, 64, 64);
	love.graphics.draw(ship, x, y, -point_t, 1, 1, 32, 32);
end

function shipmovement(dt)
	x = point_r * math.sin(point_t) + ox;
	y = point_r * math.cos(point_t) + oy;

	if love.keyboard.isDown('left') then
		point_t = point_t - 2*dt;
	elseif love.keyboard.isDown('right') then
		point_t = point_t + 2*dt;
	end
end
