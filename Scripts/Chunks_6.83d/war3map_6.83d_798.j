
// 83661 ~ 83670
function Func4024 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A1SP')
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 83672 ~ 83685
function Func4025 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call Func0193(loc_unit01,'A1SP')
    call UnitMakeAbilityPermanent(loc_unit01,true,'A1SP')
    call SetUnitAbilityLevel(loc_unit01,'A1SP',GetUnitAbilityLevel(loc_unit01,'A1SO'))
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4024))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 83687 ~ 83692
function Func4026 takes nothing returns boolean
    if GetSpellAbilityId()=='A1SO' then
        call Func4025()
    endif
    return false
endfunction

// 83694 ~ 83699
function Func4027 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4026))
    set loc_trigger01=null
endfunction
