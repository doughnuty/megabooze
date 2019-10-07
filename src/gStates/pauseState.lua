pauseState = Class{}

function pauseState:update(dt)
	if love.keyboard.isDown('return') then gGameStates:change('playState'); end
end


function pauseState:render()
	love.graphics.setFont(largeFont);
	love.graphics.print('game paused', D_WIDTH/3 + 50, D_HEIGHT/2 - 50);
	love.graphics.setFont(mediumFont);
	love.graphics.print('enter to continue', D_WIDTH/3 + 55, D_HEIGHT/2);
end


function pauseState:init() end
function pauseState:exit() end
function pauseState:enter() end
