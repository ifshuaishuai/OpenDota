
// 42547 ~ 42555
function Func1660 takes nothing returns boolean
    if GetSpellAbilityId()=='A11N' then
        if(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
        endif
    endif
    return false
endfunction

// 42557 ~ 42566
function Func1661 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1659))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1660))
    set loc_trigger01=null
endfunction
