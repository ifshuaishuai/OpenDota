
// 69773 ~ 69778
function Func3277 takes nothing returns boolean
    if GetSpellAbilityId()=='A1RD' then
        call SetUnitAnimationByIndex(GetTriggerUnit(),7)
    endif
    return false
endfunction

// 69780 ~ 69788
function Func3278 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3276))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3277))
    set loc_trigger01=null
endfunction

// 69790 ~ 69791
function Func3279 takes nothing returns nothing
endfunction
