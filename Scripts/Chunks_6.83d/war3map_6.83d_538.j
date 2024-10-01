
// 63606 ~ 63618
function Func2946 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'B07W')
    call UnitRemoveAbility(loc_unit01,'Bblo')
    call UnitRemoveAbility(loc_unit01,'B062')
    call UnitRemoveAbility(loc_unit01,'B065')
    call UnitRemoveAbility(loc_unit01,'Bcrs')
    call UnitRemoveAbility(loc_unit01,'B016')
    call UnitRemoveAbility(loc_unit01,'B05R')
    return false
endfunction

// 63620 ~ 63627
function Func2947 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,GetUnitAbilityLevel(GetTriggerUnit(),'A0R7')*1.5+1.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2946))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(17),(GetSpellTargetUnit()))
    call Func0184(sound030,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
    call DestroyEffect(AddSpecialEffectTarget("effects\\Surge.mdx",GetSpellTargetUnit(),"origin"))
endfunction

// 63629 ~ 63634
function Func2948 takes nothing returns boolean
    if GetSpellAbilityId()=='A0R7' then
        call Func2947()
    endif
    return false
endfunction

// 63636 ~ 63641
function Func2949 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2948))
    set loc_trigger01=null
endfunction
