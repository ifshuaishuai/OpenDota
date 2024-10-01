
// 87453 ~ 87463
function Func4182 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call AddUnitAnimationProperties(loc_unit01,"alternate",false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 87465 ~ 87474
function Func4183 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4182))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 87476 ~ 87481
function Func4184 takes nothing returns boolean
    if(GetSpellAbilityId()=='A073' or GetSpellAbilityId()=='A03J' or GetSpellAbilityId()=='A04J' or GetSpellAbilityId()=='A04M' or GetSpellAbilityId()=='A04N')and GetUnitTypeId(GetTriggerUnit())=='E02X' then
        call Func4183()
    endif
    return false
endfunction

// 87483 ~ 87488
function Func4185 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4184))
    set loc_trigger01=null
endfunction
