
// 63316 ~ 63321
function Func2925 takes nothing returns nothing
    if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and GetSpellTargetUnit()!=GetTriggerUnit()then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
    endif
endfunction

// 63323 ~ 63328
function Func2926 takes nothing returns boolean
    if GetSpellAbilityId()=='A0OJ' then
        call Func2925()
    endif
    return false
endfunction

// 63330 ~ 63338
function Func2927 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2924))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2926))
    set loc_trigger01=null
endfunction
