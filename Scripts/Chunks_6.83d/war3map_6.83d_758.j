
// 79374 ~ 79383
function Func3848 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0NE')
    local real loc_real01=4+4*loc_integer01
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)-(loc_real01/3))
    if GetUnitState(loc_unit01,UNIT_STATE_MANA)<loc_real01 then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4265))))==1)==false then
            call IssueImmediateOrder(loc_unit01,"unimmolation")
        endif
    endif
endfunction

// 79385 ~ 79405
function Func3849 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if GetIssuedOrderId()==852178 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
            call TriggerRegisterTimerEvent(loc_trigger01,0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3844))
        endif
    else
        call Func3847(loc_unit01)
        call Func3848(loc_unit01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 79407 ~ 79417
function Func3850 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.33,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3849))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 79419 ~ 79424
function Func3851 takes nothing returns boolean
    if GetSpellAbilityId()=='A0NE' then
        call Func3850()
    endif
    return false
endfunction

// 79426 ~ 79431
function Func3852 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3851))
    set loc_trigger01=null
endfunction
