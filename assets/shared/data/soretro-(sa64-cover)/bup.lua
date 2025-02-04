countbup=0

onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.B') and countbup == 0 then
        countbup = 1
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.U') and countbup == 1 then 
        countbup = 2
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') and countbup == 2 then
        countbup = 3
    end

    if countbup == 3 then
        playSound("Pipe")
        loadSong('Toad Brigade (SA64 Cover)', 0)
    end
end