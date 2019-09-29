--	megabooze
--	by prinnevald

--	todo:
--
--	game states
--	bullets: creation on CD and behaviour
--	booze: find a way to randomize behaviours
--	add sound efx
--	booze: additional attack types
--
--	optional:
--	write a music track
--	optional grafix efx
--	prettify the animations
--	scale images and distances
--
--	end	-> playable executable
--	possible -> android apk

Class = require 'src/class';
push = require 'src/push';
require 'Ship';
require "Booze";

D_WIDTH = love.graphics.getWidth();
D_HEIGHT = love.graphics.getHeight();

function love.load()
	--math.randomseed(os.time());
	love.window.setTitle("megabooze");

	smallFont = love.graphics.newFont('src/font.ttf', 8);
	mediumFont = love.graphics.newFont('src/font.ttf', 16);	
	largeFont = love.graphics.newFont('src/font.ttf', 32);

	booze = Booze(D_WIDTH/2, D_HEIGHT/2);
	player = Ship(D_WIDTH / 2, D_HEIGHT / 2, D_WIDTH / 4);

	love.graphics.setFont(mediumFont);
	love.graphics.setColor(0, 255, 0, 255);
	--gameState = 'menu';
end

function love.update(dt)
	player:update(dt);
	booze:update(dt);
end

function love.draw()
	booze:render();
	player:render();
	displayFPS();
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit();
	end

end

--	helper functions	--

function displayFPS()	--displays FPS in real time
	love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 10);
end
