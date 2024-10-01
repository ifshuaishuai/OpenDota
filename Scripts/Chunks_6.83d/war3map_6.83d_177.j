
// 35478 ~ 35514
function Func1431 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,1,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1427))
        call Func1420(7)
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6'))
        call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,0)
        call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,0)
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35516 ~ 35555
function Func1432 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1431))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35557 ~ 35598
function Func1433 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func1420(6)
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1432))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0MY'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0MZ')+"|r")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35600 ~ 35639
function Func1434 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1433))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35641 ~ 35682
function Func1435 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func1420(5)
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1434))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0N0'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0N1')+"|r")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35684 ~ 35723
function Func1436 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1435))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35725 ~ 35764
function Func1437 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1436))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35766 ~ 35805
function Func1438 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1437))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35807 ~ 35848
function Func1439 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func1420(4)
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1438))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0L8'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0L3')+"|r")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35850 ~ 35889
function Func1440 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1439))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35891 ~ 35930
function Func1441 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1440))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35932 ~ 35971
function Func1442 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1441))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 35973 ~ 36014
function Func1443 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func1420(3)
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1442))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0L7'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0L4')+"|r")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36016 ~ 36055
function Func1444 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1443))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36057 ~ 36095
function Func1445 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1444))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36097 ~ 36136
function Func1446 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>40 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1428(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1429(loc_integer01)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1445))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>40 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36138 ~ 36180
function Func1447 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func1420(2)
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1446))
        set integer438=40
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
        call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0L9'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0L5')+"|r")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36182 ~ 36221
function Func1448 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1447))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36223 ~ 36262
function Func1449 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player018
    local player loc_player02=player017
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1448))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36264 ~ 36303
function Func1450 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=integer440
    local player loc_player01=player017
    local player loc_player02=player018
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL or(GetTriggerEvalCount(loc_trigger01)>30 and integers123[loc_integer01]==0)then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL and IsUnitType(GetSoldUnit(),UNIT_TYPE_HERO)==false then
            set loc_trigger01=null
            return false
        endif
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SELL then
            call Func1430(loc_integer01,GetUnitPointValue(GetSoldUnit()))
            call RemoveUnit(GetSoldUnit())
        else
            call Func1430((loc_integer01),-1)
        endif
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1449))
        set integer438=30
        set player016=loc_player02
        set integer440=Func1417()
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,250)
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,0)
        call Func0118(loc_player02,"Sound\\Interface\\Rescue.wav")
    else
        if GetTriggerEvalCount(loc_trigger01)>30 then
            if integers123[loc_integer01]>0 then
                set integers123[loc_integer01]=integers123[loc_integer01]-1
            endif
        else
            set integer438=integer438-1
        endif
    endif
    set loc_trigger01=null
    set loc_player02=null
    return false
endfunction

// 36305 ~ 36324
function Func1451 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    set boolean107=true
    call Func0035(GetTriggeringTrigger())
    if boolean106==false then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(player017)]+(strings005[GetPlayerId((player017))])+"|r "+GetObjectName('n0EA'))
    endif
    set player016=player017
    set integer438=30
    call SetPlayerState(player017,PLAYER_STATE_RESOURCE_GOLD,250)
    call Func0118(player017,"Sound\\Interface\\Rescue.wav")
    call Func1420(1)
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00,"|c006699CC"+GetObjectName('n0L6')+"|r")
    call MultiboardSetTitleText(multiboard004,GetObjectName('n0K6')+" - |c00ffffff"+GetObjectName('n0LA'))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SELL)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1450))
    set loc_trigger01=null
    return false
endfunction

// 36326 ~ 36399
function Func1452 takes nothing returns nothing
    local trigger loc_trigger01
    local location loc_location01=GetRectCenter(rect029)
    local location loc_location02=GetRectCenter(rect030)
    local integer loc_integer01=1
    local player loc_player01
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
    set boolean061=true
    set boolean039=false
    set boolean038=false
    set boolean092=false
    set boolean102=false
    call SuspendTimeOfDay(true)
    call DisableTrigger(trigger052)
    call DisableTrigger(trigger050)
    if boolean125==false then
        call Func1168()
    endif
    set integers122[GetPlayerId(players003[1])]=GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players003[2])]=GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players003[3])]=GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players003[4])]=GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players003[5])]=GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players004[1])]=GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players004[2])]=GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players004[3])]=GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players004[4])]=GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers122[GetPlayerId(players004[5])]=GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)
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
    set integer439=GetRandomInt(1,2)
    set boolean106=false
    set integer440=integer439
    if integer439==1 then
        set player017=players003[1]
        set player018=players004[1]
    else
        set player017=players004[1]
        set player018=players003[1]
    endif
    set integer441=1
    set integer442=2
    set integers123[1]=110
    set integers123[2]=110
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,15-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1451))
    call Func1423()
    call Func0152(bj_FORCE_ALL_PLAYERS,4.00,GetObjectName('n0ES'))
    call Func0152(bj_FORCE_ALL_PLAYERS,4.00,GetObjectName('n0ER'))
    set loc_trigger01=null
    set loc_location01=null
    set loc_location02=null
    set loc_player01=null
endfunction
