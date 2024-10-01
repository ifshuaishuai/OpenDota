
// 75228 ~ 75242
function Func3609 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A30F')
    call UnitRemoveAbility(loc_unit01,'A30W')
    call UnitRemoveAbility(loc_unit01,'A30P')
    call Func0193(loc_unit01,'A30W')
    call SetUnitAbilityLevel(loc_unit01,'A30W',loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 75244 ~ 75263
function Func3610 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A30F')
    call UnitRemoveAbility(loc_unit01,'A30W')
    call UnitRemoveAbility(loc_unit01,'A30H')
    call Func0193(loc_unit01,'A30P')
    call SetUnitAbilityLevel(loc_unit01,'A30P',loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3609))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 75265 ~ 75279
function Func3611 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A30F')
    call TriggerRegisterTimerEvent(loc_trigger01,6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3610))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call UnitRemoveAbility(loc_unit01,'A30W')
    call UnitRemoveAbility(loc_unit01,'A30P')
    call Func0193(loc_unit01,'A30H')
    call SetUnitAbilityLevel(loc_unit01,'A30H',loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 75281 ~ 75286
function Func3612 takes nothing returns boolean
    if GetSpellAbilityId()=='A30F' then
        call Func3611()
    endif
    return false
endfunction
