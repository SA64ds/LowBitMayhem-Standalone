function onCreatePost()

setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Low-Bit Mayhem | Bit-Beat | Stawii")
-- Sets text to the SMB1 font
setTextFont('scoreTxt', 'smb1.ttf')
setTextSize('scoreTxt', '17')
setTextFont('timeTxt', 'smb1.ttf')
setTextSize('timeTxt', '25')

setTextFont("songTitle", "smb1.ttf")
setTextFont("labelName", "smb1.ttf")
setTextFont("songPlaying", "smb1.ttf")

-- Sets the camera to a fixed position
setCameraFollowPoint(650, 520)
setProperty('isCameraOnForcedPos',true)

-- Sets the health bar color based on the setting
if getModSetting("smb1hbc")=="B&W" then
    setHealthBarColors('black', 'white')
elseif getModSetting("smb1hbc")=="V-Slice" then
    setHealthBarColors('red', 'lime')
elseif getModSetting("smb1hbc")=="V-Slice NES" then
    setHealthBarColors('#b21030', '#71f341')
elseif getModSetting("smb1hbc")=="SA64" then
    setHealthBarColors('#2800ba', '#b21030')
end

-- Sets the time bar color based on the setting
if getModSetting("timebarc")=="SA64" then
    setTimeBarColors("#2800ba", "#b21030")
end

-- Changes the Pause Menu Music
    setPropertyFromClass("substates.PauseSubState", "songName", "breakfast-smb1")

-- Changes death animation and music, just in case
setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf-pixel-dead');
setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');	

end

-- Starts the crowd sound when the countdown begins
function onStartCountdown()
    playSound("smas_chat", 0.75, "crowdchat", false)
    counter=3
end

-- In theory, starts making the crowd sound fade-out when the countdown hits GO!
function onCountdownTick(counter)
    soundFadeOut("crowdchat", 1.0, 0)
end

function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Low-Bit Mayhem")
end