
// 79515 ~ 79527
function Func3858 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
        call Func0123(loc_unit01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 79529 ~ 79539
function Func3859 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3858))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 79541 ~ 79546
function Func3860 takes nothing returns boolean
    if GetSpellAbilityId()=='A0NT' or GetSpellAbilityId()=='A0NX' then
        call Func3859()
    endif
    return false
endfunction
