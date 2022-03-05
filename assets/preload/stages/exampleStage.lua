function onCreate()
	-- background shit
	makeLuaSprite('stagebackEVIL', 'stagebackEVIL', -600, -300);
	setScrollFactor('stagebackEVIL', 0.95, 0.95);
	scaleObject('stagebackEVIL', 1.1, 1.1);
	
	makeLuaSprite('stagefrontEVIL', 'stagefrontEVIL', -800, 600);
	setScrollFactor('stagefrontEVIL', 1.0, 1.0);
	scaleObject('stagefrontEVIL', 1.2, 1.2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_lightEVIL', -50, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.2, 1.2);
		
		makeLuaSprite('stagelight_right', 'stage_lightEVIL', 1450, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.2, 1.2);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtainsEVIL', -550, -300);
		setScrollFactor('stagecurtains', 1.1, 1.1);
		scaleObject('stagecurtains', 1.1, 1.1);
	end

	addLuaSprite('stagebackEVIL', false);
	addLuaSprite('stagefrontEVIL', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end