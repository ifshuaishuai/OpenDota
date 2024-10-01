
// 31264 ~ 31287
function Func1278 takes nothing returns boolean
    if boolean038==false then
        return false
    endif
    if booleans004[GetPlayerId(player004)]==true then
        return false
    endif
    if boolean002==false then
        return false
    endif
    if units001[GetPlayerId(player004)]!=null and boolean040==false then
        return false
    endif
    if booleans003[GetPlayerId(player004)]==true then
        return false
    endif
    if booleans006[GetPlayerId(player004)]and boolean040==false then
        return false
    endif
    if boolean040 and booleans007[GetPlayerId(player004)]then
        return false
    endif
    return true
endfunction

// 31289 ~ 31316
function Func1279 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local string loc_string01=(LoadStr(hashtable001,(loc_integer01),(146)))
    set player004=loc_player01
    if Func1278()then
        set booleans004[GetPlayerId(loc_player01)]=true
        if loc_string01=="-random int"then
            call Func0089(loc_player01)
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-100)
        elseif loc_string01=="-random str"then
            call Func0090(loc_player01)
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-100)
        elseif loc_string01=="-random agi"then
            call Func0091(loc_player01)
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-100)
        else
            call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD)-50)
            call Func0092(loc_player01)
        endif
    else
        call DisplayTimedTextToPlayer(loc_player01,0,real003,10,GetObjectName('n079'))
    endif
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction

// 31318 ~ 31333
function Func1280 takes nothing returns nothing
    local player loc_player01=GetTriggerPlayer()
    local trigger loc_trigger01
    set player004=loc_player01
    if Func1278()and booleans008[GetPlayerId(loc_player01)]==false then
        set booleans008[GetPlayerId(loc_player01)]=true
        call Func0071(loc_player01)
        call DisplayTimedTextToPlayer(loc_player01,0,real003,10,GetObjectName('n07A'))
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,6,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1279))
        call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(54),(loc_player01))
        call SaveStr(hashtable001,(GetHandleId(loc_trigger01)),(146),(StringCase(GetEventPlayerChatString(),false)))
    endif
    set loc_trigger01=null
endfunction
