
// 94162 ~ 94167
function Func4552 takes nothing returns nothing
    if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))and GetSpellTargetUnit()!=GetTriggerUnit()then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
    endif
endfunction

// 94169 ~ 94174
function Func4553 takes nothing returns boolean
    if GetSpellAbilityId()=='A2S9' then
        call Func4552()
    endif
    return false
endfunction

// 94176 ~ 94184
function Func4554 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4551))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4553))
    set loc_trigger01=null
endfunction
