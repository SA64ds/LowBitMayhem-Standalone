local newNoteskin = 'NOTE_assets'
function onEvent(name, value1, value2)
    if name == "Note Skin Change" then
        changeNoteskin(newNoteskin)
    end
end

function changeNoteskin(texture)
    setPropertyFromClass('PlayState', 'isPixelStage', false)
    for i=0, 4 do
        setPropertyFromGroup('playerStrums', i, 'texture', texture)
    end
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'texture', texture)
        end
    end
    for i=0, 4 do
        setPropertyFromGroup('opponentStrums', i, 'texture', texture)
    end
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
            setPropertyFromGroup('unspawnNotes', i, 'texture', texture)
        end
    end
end
