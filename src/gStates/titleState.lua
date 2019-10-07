titleState = Class{}

function titleState:update(dt)
	if love.keyboard.isDown('return') then gGameStates:change('playState'); end
end


function titleState:render()
	love.graphics.setFont(largeFont);
	love.graphics.print('megabooze', D_WIDTH/3 + 50, D_HEIGHT/2 - 50);
	love.graphics.setFont(mediumFont);
	love.graphics.print('press enter to play', D_WIDTH/3 + 55, D_HEIGHT/2);
end


function titleState:init() end
function titleState:exit() end
function titleState:enter() end
