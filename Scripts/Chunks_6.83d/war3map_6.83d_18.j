
// 5296 ~ 5310
function Func0244 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(59)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(59)))
    call UnitRemoveAbility(loc_unit01,loc_integer03)
    if UnitRemoveAbility(loc_unit01,loc_integer02)==true or GetUnitAbilityLevel(loc_unit01,loc_integer02)==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 5312 ~ 5334
function Func0245 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(59)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(60)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,loc_integer03)
    if UnitRemoveAbility(loc_unit01,loc_integer02)==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0244))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer01),(59),(loc_integer02))
        call SaveInteger(hashtable001,(loc_integer01),(60),(loc_integer03))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 5336 ~ 5348
function Func0246 takes unit loc_unit01,integer loc_integer01,integer loc_integer02,real loc_real01,integer loc_integer03 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,loc_integer01)
    call SetUnitAbilityLevel(loc_unit01,loc_integer01,loc_integer02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0245))
    call SaveUnitHandle(hashtable001,(loc_integer04),(17),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer04),(59),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer04),(60),(loc_integer03))
    set loc_trigger01=null
endfunction
