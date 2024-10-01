
// 60232 ~ 60237
function Func2757 takes nothing returns nothing
    if GetUnitAbilityLevel(GetSpellTargetUnit(),'BNdo')>0 then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n03I'))
    endif
endfunction

// 60239 ~ 60244
function Func2758 takes nothing returns boolean
    if GetSpellAbilityId()=='A0MF' then
        call Func2757()
    endif
    return false
endfunction

// 60246 ~ 60254
function Func2759 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2758))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2756))
    set loc_trigger01=null
endfunction
