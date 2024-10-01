
// 94368 ~ 94378
function Func4572 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+200)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 94380 ~ 94408
function Func4573 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=Func0030()
    set integer569=GetUnitAbilityLevel(loc_unit01,'A2SO')
    set unit124=loc_unit01
    set unit432=loc_unit01
    set boolean158=false
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,175+25,Condition(function Func0305))
    call ForGroup(loc_group01,function Func4571)
    call Func0029(loc_group01)
    call Func0163("effects\\BasicWaterFlash.mdx",loc_real01,loc_real02,1)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if boolean158 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4572))
    endif
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 94410 ~ 94424
function Func4574 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2SO')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4573))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 94426 ~ 94431
function Func4575 takes nothing returns boolean
    if GetSpellAbilityId()=='A2SO' then
        call Func4574()
    endif
    return false
endfunction

// 94433 ~ 94438
function Func4576 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4575))
    set loc_trigger01=null
endfunction
