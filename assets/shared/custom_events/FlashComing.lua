function onUpdate() pR=playbackRate end

function onCreate()
	makeLuaSprite('FComing') makeGraphic('FComing',1280,720,'FFFFFF') setObjectCamera('FComing','camHUD')
end

function onEvent(n,v1)
	if n=='FlashComing' then
	if v1=='' or v1==nil then v1='FFFFFF' end addLuaSprite('FComing')
	cancelTween('WJumpscare') setProperty('FComing.alpha',0) setColorHex('FComing',v1)
	doTweenAlpha('WJumpscare','FComing',1,crochet/249/pR,'circIn') end
end

--Optimization
function onTweenCompleted(t) if t=='WJumpscare' then removeLuaSprite('FComing',false) end end

function setColorHex(n,o) setProperty(n..'.color',getColorFromHex(o)) end
