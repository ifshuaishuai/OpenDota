
// 70426 ~ 70432
function Func3310 takes nothing returns boolean
    if GetSpellAbilityId()=='A0SW' and IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true or IsUnitIllusion(GetSpellTargetUnit()))then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0LV'))
    endif
    return false
endfunction

// 70434 ~ 70442
function Func3311 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3309))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3310))
    set loc_trigger01=null
endfunction
