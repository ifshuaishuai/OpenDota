
// 77597 ~ 77602
function Func3747 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    call UnitRemoveAbility(loc_unit01,'BEsh')
    call UnitRemoveAbility(loc_unit01,'B0AQ')
    set loc_unit01=null
endfunction

// 77604 ~ 77609
function Func3748 takes nothing returns boolean
    if GetSpellAbilityId()=='A080' or GetSpellAbilityId()=='A1UZ' then
        call Func3747()
    endif
    return false
endfunction

// 77611 ~ 77616
function Func3749 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3748))
    set loc_trigger01=null
endfunction
