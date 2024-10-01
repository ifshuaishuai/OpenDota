
// 58321 ~ 58344
function Func2628 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0LC')
    local integer loc_integer03
    local integer loc_integer04
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(loc_unit01,'B02H')==0 or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and loc_unit01==GetSpellTargetUnit()and Func0374(GetSpellAbilityId()))then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'B02H')
        call Func0420(loc_unit01,0)
    else
        set loc_integer03=R2I(GetUnitState(loc_unit01,UNIT_STATE_LIFE)*(0.04+0.01*loc_integer02))
        set loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(238)))
        if loc_integer03!=loc_integer04 then
            call SaveInteger(hashtable001,(loc_integer01),(238),(loc_integer03))
            call Func0420(loc_unit01,loc_integer03)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 58346 ~ 58356
function Func2629 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DEATH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2628))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call SaveInteger(hashtable001,(loc_integer01),(238),(0))
    set loc_trigger01=null
endfunction

// 58358 ~ 58363
function Func2630 takes nothing returns boolean
    if GetSpellAbilityId()=='A0LC' then
        call Func2629()
    endif
    return false
endfunction
