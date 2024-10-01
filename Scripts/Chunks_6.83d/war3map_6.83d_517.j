
// 62677 ~ 62694
function Func2882 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEvalCount(loc_trigger01)>300 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitAbilityLevel(loc_unit02,'B0E7')>0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0115(loc_unit01,loc_unit02,1,GetUnitAbilityLevel(loc_unit01,'A0BH')*75)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 62696 ~ 62708
function Func2883 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2882))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 62710 ~ 62715
function Func2884 takes nothing returns boolean
    if GetSpellAbilityId()=='A0BH' then
        call Func2883()
    endif
    return false
endfunction

// 62717 ~ 62722
function Func2885 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2884))
    set loc_trigger01=null
endfunction
