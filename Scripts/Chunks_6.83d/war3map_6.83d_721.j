
// 76517 ~ 76527
function Func3685 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SetUnitTimeScale(loc_unit01,1)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 76529 ~ 76540
function Func3686 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3685))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SetUnitTimeScale(loc_unit01,2)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 76542 ~ 76551
function Func3687 takes nothing returns boolean
    if GetSpellAbilityId()=='A226' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func3684()
        else
            call Func3686()
        endif
    endif
    return false
endfunction

// 76553 ~ 76559
function Func3688 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3687))
    set loc_trigger01=null
endfunction
