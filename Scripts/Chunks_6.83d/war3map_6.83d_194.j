
// 40540 ~ 40563
function Func1540 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(172)))
    local player loc_player01
    local integer loc_integer03=1
    loop
        exitwhen loc_integer03>5
        set loc_player01=players003[loc_integer03]
        if Func0059(loc_player01)and loc_player01!=player003 then
            set units001[GetPlayerId(loc_player01)]=CreateUnit(loc_player01,loc_integer02,GetRectCenterX(rect011),GetRectCenterY(rect011),270)
        endif
        set loc_player01=players004[loc_integer03]
        if Func0059(loc_player01)and loc_player01!=player003 then
            set units001[GetPlayerId(loc_player01)]=CreateUnit(loc_player01,loc_integer02,GetRectCenterX(rect004),GetRectCenterY(rect004),270)
        endif
        set loc_integer03=loc_integer03+1
    endloop
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_player01=null
    return false
endfunction

// 40565 ~ 40587
function Func1541 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitTypeId(loc_unit01)
    local trigger loc_trigger01
    local integer loc_integer03
    if(GetOwningPlayer(loc_unit01)==player003 and IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true)then
        call DisableTrigger(GetTriggeringTrigger())
        if booleans004[GetPlayerId(player003)]==false and boolean004==false and boolean005==false then
            call SetPlayerState(player003,PLAYER_STATE_RESOURCE_GOLD,250+GetPlayerState(player003,PLAYER_STATE_RESOURCE_GOLD))
        endif
        set booleans003[GetPlayerId(player003)]=true
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1540))
        call SaveInteger(hashtable001,(loc_integer03),(172),(loc_integer02))
    endif
    set loc_player01=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 40589 ~ 40613
function Func1542 takes nothing returns nothing
    local integer loc_integer01=1
    local trigger loc_trigger01=CreateTrigger()
    local region loc_region01=CreateRegion()
    set boolean033=true
    call Func0068('H00I')
    call Func0068('N0MU')
    loop
        exitwhen loc_integer01>5
        if(players003[loc_integer01]!=player003)then
            call Func0071(players003[loc_integer01])
            set booleans004[GetPlayerId(players003[loc_integer01])]=true
            set booleans003[GetPlayerId(players003[loc_integer01])]=true
        endif
        if(players004[loc_integer01]!=player003)then
            call Func0071(players004[loc_integer01])
            set booleans004[GetPlayerId(players004[loc_integer01])]=true
            set booleans003[GetPlayerId(players004[loc_integer01])]=true
        endif
        set loc_integer01=loc_integer01+1
    endloop
    call RegionAddRect(loc_region01,bj_mapInitialPlayableArea)
    call TriggerRegisterEnterRegion(loc_trigger01,loc_region01,Condition(function Func0011))
    call TriggerAddAction(loc_trigger01,function Func1541)
endfunction
