--	megabooze
--	by prinnevald

--	todo:
--
--	bullets: creation on CD and behaviour
--	booze: find a way to randomize behaviours	//states
--	add sound efx
--	booze: additional attack types
--
--	optional:
--	optional grafix efx
--	prettify the animations
--
--	end	-> playable executable
--	possible -> android apk

Class = require 'src/lib/class';
require 'src/gStates/titleState';
--require 'src/gStates/pauseState';
require 'src/gStates/playState';
require 'src/lib/StateMachine';
require 'Ship';
require 'Booze';

D_WIDTH = love.graphics.getWidth();
D_HEIGHT = love.graphics.getHeight();
SCORE = 0;

function love.load()

	--	initializing basic options
	love.graphics.setColor(0, 255, 0, 255);
	love.window.setTitle("megabooze");
	loadFonts();
	bgMusic();

	--	initializing gStateMachine
	gGameStates = StateMachine {
		['titleState'] = function() return titleState() end,
		['playState']  = function() return playState()  end,
		--['pauseState'] = function() return pauseState() end,
	}
	gGameStates:change('titleState');

end


function love.update(dt) gGameStates:update(dt); end
function love.draw() gGameStates:render(); end


function love.keypressed(key)
	if key == 'escape' then love.event.quit(); end
end


------helper functions------


function bgMusic()
	--	setting bg music
	music = love.audio.newSource('src/audio/retro_verse_first.wav', 'stream');
	music:setLooping(true);
	music:play();
end


function loadFonts()	--loads single retro font with different sizes
	smallFont = love.graphics.newFont('src/font.ttf', 8);
	mediumFont = love.graphics.newFont('src/font.ttf', 16);	
	largeFont = love.graphics.newFont('src/font.ttf', 32);
end
