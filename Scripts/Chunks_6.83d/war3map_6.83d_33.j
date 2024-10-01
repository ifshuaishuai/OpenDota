
// 13354 ~ 13380
function Func0544 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(335)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01
    local real loc_real02
    local real loc_real03
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()!=loc_unit01 then
            call KillUnit(loc_unit01)
        endif
    else
        set loc_real03=GetUnitFacing(loc_unit02)*bj_RADTODEG
        set loc_real01=GetUnitX(loc_unit02)+75
        set loc_real02=GetUnitY(loc_unit02)+75
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 13382 ~ 13411
function Func0545 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit04
    if GetSummoningUnit()==loc_unit03 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_unit04=GetSummonedUnit()
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit04)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0544))
        call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit04))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call UnitAddAbility(loc_unit04,'Aloc')
        call SetUnitPosition(loc_unit04,GetUnitX(loc_unit02)+100,GetUnitY(loc_unit02)+100)
        call IssueTargetOrder(loc_unit04,"attack",loc_unit02)
        call SetUnitMoveSpeed(loc_unit04,522)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    set loc_unit03=null
    return false
endfunction

// 13413 ~ 13432
function Func0546 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=loc_unit02
    local unit loc_unit04
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if Func0099(loc_unit03)then
        set loc_unit03=(units001[GetPlayerId(GetOwningPlayer((loc_unit03)))])
    endif
    set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit03),GetUnitY(loc_unit03),0)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0545))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit04))
    call Func0193(loc_unit04,'A2E7')
    call IssueTargetOrderById(loc_unit04,852274,loc_unit03)
    set loc_trigger01=null
    set loc_unit03=null
    set loc_unit04=null
endfunction
