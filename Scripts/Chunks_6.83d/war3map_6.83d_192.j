
// 39470 ~ 39479
function Func1514 takes nothing returns boolean
    local unit loc_unit01=GetSoldUnit()
    local string loc_string01=strings001[GetPlayerId(GetOwningPlayer(GetSoldUnit()))]+(strings005[GetPlayerId((GetOwningPlayer(GetSoldUnit())))])+"|r"
    call Func0152(bj_FORCE_ALL_PLAYERS,20,loc_string01+" "+GetObjectName('n09I')+" "+GetUnitName(loc_unit01)+" "+GetObjectName('n09N'))
    call Func0068(GetUnitTypeId(GetSoldUnit()))
    call Func0415("Ban"+I2S(GetPlayerId(GetOwningPlayer(GetSoldUnit()))),GetUnitTypeId(GetSoldUnit()))
    call RemoveUnit(GetSoldUnit())
    set loc_unit01=null
    return false
endfunction

// 39481 ~ 39507
function Func1515 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local trigger loc_trigger02=CreateTrigger()
    local integer loc_integer01
    local string loc_string01=strings001[GetPlayerId(players003[1])]+(strings005[GetPlayerId((players003[1]))])+"|r"
    local string loc_string02=strings001[GetPlayerId(players004[1])]+(strings005[GetPlayerId((players004[1]))])+"|r"
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,loc_string01+" "+GetObjectName('n09K'))
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,loc_string02+" "+GetObjectName('n09K'))
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
    call Func0035(loc_trigger01)
    call Func0176(loc_trigger02,EVENT_PLAYER_UNIT_SELL)
    call TriggerAddCondition(loc_trigger02,Condition(function Func1514))
    call SuspendTimeOfDay(true)
    call DisableTrigger(trigger052)
    call DisableTrigger(trigger050)
    call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,1000)
    call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,1000)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveTriggerHandle(hashtable001,(loc_integer01),(169),(loc_trigger02))
    call TriggerRegisterTimerEvent(loc_trigger01,20,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1513))
    set loc_trigger02=null
    set loc_trigger01=null
    return false
endfunction

// 39509 ~ 39558
function Func1516 takes nothing returns nothing
    local trigger loc_trigger01
    local location loc_location01=GetRectCenter(rect029)
    local location loc_location02=GetRectCenter(rect030)
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>5
        if Func0059(players003[loc_integer01])then
            call CreateUnitAtLoc(players003[loc_integer01],'n00C',loc_location02,bj_UNIT_FACING)
        endif
        if Func0059(players004[loc_integer01])then
            call CreateUnitAtLoc(players004[loc_integer01],'n00C',loc_location01,bj_UNIT_FACING)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    set boolean117=true
    set integer027=180
    set boolean039=false
    set boolean038=false
    set boolean092=false
    call Func1168()
    set integers142[GetPlayerId(players003[1])]=GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players003[2])]=GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players003[3])]=GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players003[4])]=GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players003[5])]=GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players004[1])]=GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players004[2])]=GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players004[3])]=GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players004[4])]=GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers142[GetPlayerId(players004[5])]=GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)
    call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD,0)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,15-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1515))
    set loc_trigger01=null
    set loc_location01=null
    set loc_location02=null
endfunction
