function onEvent(name,value1,value2)
    if name == "De-Pixel" then
        triggerEvent('Camera Follow Pos', '', '')
        setProperty('isCameraOnForcedPos',false)

        -- Reverts text to normal FNF
        setTextFont('scoreTxt', 'vcr.ttf')
        setTextSize('scoreTxt', '20')
        setTextFont('timeTxt', 'vcr.ttf')
        setTextSize('timeTxt', '33')

        -- Reverts the pause music
        setPropertyFromClass("substates.PauseSubState", "songName", "breakfast")

        -- Reverts the death animation/music
        setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf-dead');
        setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
        setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver');
        setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd');

        -- Checks if the Change Health Bar Color setting is false and sets the colors back if so.
        if not getModSetting("changehbc") then
            if getModSetting("smb1hbc")=="B&W" then
                setHealthBarColors('black', 'white')
            elseif getModSetting("smb1hbc")=="V-Slice" then
                setHealthBarColors('red', 'lime')
            elseif getModSetting("smb1hbc")=="V-Slice NES" then
                setHealthBarColors('#b21030', '#71f341')
            elseif getModSetting("smb1hbc")=="SA64" then
                setHealthBarColors('#2800ba', '#b21030')
            end
        end

        -- Checks if Keep 4:3 is enabled, then checks if 4:3 is enabled just so the code isn't redunantly run.
        if not getModSetting("keep43") and getModSetting("43ratio") then
            -- Remove 4:3 stuff
            removeLuaSprite('vcrshit2')
            removeLuaSprite("borderL")

            -- Opponent Note Tweening
            noteTweenX("notetween0", 0, defaultOpponentStrumX0, 0.5, "cubeOut")
            noteTweenX("notetween1", 1, defaultOpponentStrumX1, 0.5, "cubeOut")
            noteTweenX("notetween2", 2, defaultOpponentStrumX2, 0.5, "cubeOut")
            noteTweenX("notetween3", 3, defaultOpponentStrumX3, 0.5, "cubeOut")

            -- Player Note Tweening
            noteTweenX("notetween4", 4, defaultPlayerStrumX0, 0.5, "cubeOut")
            noteTweenX("notetween5", 5, defaultPlayerStrumX1, 0.5, "cubeOut")
            noteTweenX("notetween6", 6, defaultPlayerStrumX2, 0.5, "cubeOut")
            noteTweenX("notetween7", 7, defaultPlayerStrumX3, 0.5, "cubeOut")
        end
    end
end