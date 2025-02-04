countretro=0

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R') and countretro == 0 then
        countretro = 1
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') and countretro == 1 then 
        countretro = 2
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') and countretro == 2 then
        countretro = 3
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R') and countretro == 3 then
        countretro = 4
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') and countretro == 4 then
        countretro = 5
    end

    if countretro == 5 then
        playSound("Pipe")
        loadSong('SORETRO (SA64 Cover)', 1)
    end
end

function onEndSong()
    if getAchievementScore("commitedtothebit")<64 then
        addAchievementScore('commitedtothebit')
    end 
end

function onPause()
	playSound("pause")
    return Function_Continue;
end
function onResume()
	playSound("pause")
end