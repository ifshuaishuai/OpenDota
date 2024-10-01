
// 43713 ~ 43723
function Func1725 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A140')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 43725 ~ 43735
function Func1726 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call Func0193(loc_unit01,'A140')
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1725))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 43737 ~ 43742
function Func1727 takes nothing returns boolean
    if GetSpellAbilityId()=='A13Z' then
        call Func1726()
    endif
    return false
endfunction

// 43744 ~ 43749
function Func1728 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1727))
    set loc_trigger01=null
endfunction
