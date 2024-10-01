
// 49703 ~ 49713
function Func2107 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SetUnitAnimationByIndex(loc_unit01,4)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 49715 ~ 49724
function Func2108 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2107))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 49726 ~ 49731
function Func2109 takes nothing returns boolean
    if GetSpellAbilityId()=='A0M1' or GetSpellAbilityId()=='A1AX' then
        call Func2108()
    endif
    return false
endfunction

// 49733 ~ 49741
function Func2110 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2106))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2109))
    set loc_trigger01=null
endfunction
