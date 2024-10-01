
// 46350 ~ 46365
function Func1883 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A04C')
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    if(IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and loc_integer03>2+loc_integer02)or loc_integer03>20 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit01,loc_unit02,1,50)
    endif
    set loc_trigger01=null
    return false
endfunction

// 46367 ~ 46379
function Func1884 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1883))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 46381 ~ 46386
function Func1885 takes nothing returns boolean
    if GetSpellAbilityId()=='A04C' then
        call Func1884()
    endif
    return false
endfunction

// 46388 ~ 46393
function Func1886 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1885))
    set loc_trigger01=null
endfunction
