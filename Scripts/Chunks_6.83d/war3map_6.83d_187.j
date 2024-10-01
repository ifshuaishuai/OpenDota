
// 37894 ~ 37906
function Func1491 takes player loc_player01,integer loc_integer01 returns nothing
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>5
        if loc_player01!=players003[loc_integer02]then
            call SetPlayerTechMaxAllowed(players003[loc_integer02],loc_integer01,0)
        endif
        if loc_player01!=players004[loc_integer02]then
            call SetPlayerTechMaxAllowed(players004[loc_integer02],loc_integer01,0)
        endif
        set loc_integer02=loc_integer02+1
    endloop
endfunction

// 37908 ~ 37950
function Func1492 takes nothing returns boolean
    local string loc_string01=GetEventPlayerChatString()
    local integer loc_integer01=S2I(SubString(loc_string01,6,StringLength(loc_string01)))
    local integer loc_integer02
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local location loc_location01=GetRectCenter(rect017)
    local location loc_location02=GetRectCenter(rect016)
    local player loc_player01=GetTriggerPlayer()
    if loc_integer01==1 then
        set loc_integer02=(LoadInteger(hashtable001,(loc_integer03),(166)))
    elseif loc_integer01==2 then
        set loc_integer02=(LoadInteger(hashtable001,(loc_integer03),(167)))
    elseif loc_integer01==3 then
        set loc_integer02=(LoadInteger(hashtable001,(loc_integer03),(168)))
    else
        call RemoveLocation(loc_location01)
        call RemoveLocation(loc_location02)
        set loc_location01=null
        set loc_location02=null
        return false
    endif
    if GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)>=250 then
        if Func0056(loc_player01)then
            set units001[GetPlayerId(loc_player01)]=CreateUnitAtLoc(loc_player01,integers070[loc_integer02],loc_location01,0)
        else
            set units001[GetPlayerId(loc_player01)]=CreateUnitAtLoc(loc_player01,integers070[loc_integer02],loc_location02,0)
        endif
        call Func0235(loc_player01)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-250)
        call FlushChildHashtable(hashtable001,(loc_integer03))
        call Func0035(loc_trigger01)
    else
        call Func0120(loc_player01,GetObjectName('n033'))
    endif
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set loc_location01=null
    set loc_location02=null
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction
