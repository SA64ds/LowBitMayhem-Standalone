function onCreatePost()
	if getModSetting("43ratio")==true then
		makeLuaSprite('borderL', 'aspect',0,0)
		addLuaSprite('borderL', false)
		setObjectCamera("borderL", "camother")
		makeLuaSprite('vcrshit2', 'vcrshit',0,0)  
		addLuaSprite('vcrshit2', false)
		setObjectCamera("vcrshit2", "hud")

		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + 76)
		end
		for i = 4,7 do
			setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + - 67)
			setPropertyFromGroup('strumLineNotes', i, "y", getPropertyFromGroup('strumLineNotes', i, "y") + 0)
		end
	end
end

function onCreate()
	-- background shit
	makeAnimatedLuaSprite('smb1stage', 'stages/smb1stage/smb1stage', 138, 46, 'aseprite');
	objectPlayAnimation("smb1stage","crowddance0",false)
	setScrollFactor('smb1stage', 1, 1);
	scaleObject('smb1stage', 4, 4);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('smb1stage', false);
	setProperty('smb1stage.antialiasing', false)
end

function onSongStart()
	addAnimationByPrefix("smb1stage", "dance", "crowddance0",6,true)
	objectPlayAnimation("smb1stage","crowddance0",false)
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
end