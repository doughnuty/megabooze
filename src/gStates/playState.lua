playState = Class{}


function playState:init()

	math.randomseed(os.time());

	--	initializing objects
	booze = Booze(D_WIDTH/2, D_HEIGHT/2);
	player = Ship(D_WIDTH / 2, D_HEIGHT / 2, D_HEIGHT / 2.5);
end


function playState:update(dt)
	--if love.keyboard.isDown('return') then gGameStates:change('pauseState'); end
	player:update(dt);
	booze:update(dt);
end


function playState:render()
	player:render();
	booze:render();
	displayUI();
end

--i'll just leave a comment here

function playState:exit() end
function playState:enter() end


function displayUI()	--displays FPS in real time in the up-left corner
	love.graphics.setFont(mediumFont);
	love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 10);
	love.graphics.setFont(largeFont);
	love.graphics.print('score: ' .. SCORE, 10, D_HEIGHT - 32);
end
