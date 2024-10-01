
// 43178 ~ 43190
function Func1692 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_MANA)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MAX_MANA))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,loc_real01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 43192 ~ 43201
function Func1693 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1692))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 43203 ~ 43208
function Func1694 takes nothing returns boolean
    if GetSpellAbilityId()=='ANcr' and GetUnitTypeId(GetTriggerUnit())=='N01I' then
        call Func1693()
    endif
    return false
endfunction

// 43210 ~ 43215
function Func1695 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1694))
    set loc_trigger01=null
endfunction
