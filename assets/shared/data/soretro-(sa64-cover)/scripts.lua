function onCreatePost()
    if not isAchievementUnlocked("so_retroacheivements") then
        unlockAchievement("so_retroacheivements")
    end

    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday n Fnightfunkin")
	setPropertyFromClass("substates.PauseSubState", "songName", "pauseSA64")
end

function onDestroy()
    setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Low-Bit Mayhem")
end