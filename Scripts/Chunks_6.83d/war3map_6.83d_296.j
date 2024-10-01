
// 47646 ~ 47656
function Func1978 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'Bslo')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47658 ~ 47673
function Func1979 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1978))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SetUnitOwner(loc_unit01,GetOwningPlayer(loc_unit02),true)
    call UnitApplyTimedLife(loc_unit01,'BTLF',80)
    call Func0193(loc_unit01,'Aeth')
    call Func0193(loc_unit01,'A12G')
    call Func0150(loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 47675 ~ 47680
function Func1980 takes nothing returns boolean
    if GetSpellAbilityId()=='A0DX' and Func1977(GetSpellTargetUnit())then
        call Func1979()
    endif
    return false
endfunction

// 47682 ~ 47687
function Func1981 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1980))
    set loc_trigger01=null
endfunction
