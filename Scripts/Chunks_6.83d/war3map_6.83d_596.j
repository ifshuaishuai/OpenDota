
// 68330 ~ 68347
function Func3204 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(813)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A2U1')
        call UnitRemoveAbility(loc_unit01,'B0GV')
        call UnitRemoveAbility(loc_unit01,'A2U2')
        call UnitRemoveAbility(loc_unit01,'B0GW')
        call UnitRemoveAbility(loc_unit01,'A2U4')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 68349 ~ 68369
function Func3205 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=3.0
    local integer loc_integer02='A2U2'
    local integer loc_integer03='B0GW'
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)then
        set loc_real01=2.0
    endif
    set loc_integer02='A2U1'
    set loc_integer03='B0GV'
    call Func0193(loc_unit01,loc_integer02)
    call Func0193(loc_unit01,loc_integer03)
    call Func0193(loc_unit01,'A2U4')
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3204))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(813),(((TimerGetElapsed(timer001))+loc_real01-0.1)*1.0))
    set loc_trigger01=null
endfunction

// 68371 ~ 68390
function Func3206 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(812)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetTriggerUnit()==loc_unit02 then
            call Func3205(GetAttacker())
        endif
    elseif(TimerGetElapsed(timer001))>loc_real01 then
        call UnitRemoveAbility(loc_unit02,'A2U0')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 68392 ~ 68415
function Func3207 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=40
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A08R')
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(812)))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(812),(((TimerGetElapsed(timer001))+loc_integer02)*1.0))
    call Func0193(loc_unit02,'A2U0')
    call SetUnitAbilityLevel(loc_unit02,'A2U0',loc_integer03)
    if loc_real01<(TimerGetElapsed(timer001))then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3206))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 68417 ~ 68422
function Func3208 takes nothing returns boolean
    if GetSpellAbilityId()=='A08R' then
        call Func3207()
    endif
    return false
endfunction

// 68424 ~ 68429
function Func3209 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3208))
    set loc_trigger01=null
endfunction
