
// 49910 ~ 49918
function Func2123 takes nothing returns boolean
    if GetSpellAbilityId()=='A10U' or GetSpellAbilityId()=='A11Y' or GetSpellAbilityId()=='A11Z' then
        if GetSpellTargetUnit()!=null and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
        endif
    endif
    return false
endfunction

// 49920 ~ 49928
function Func2124 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2122))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2123))
    set loc_trigger01=null
endfunction

// 49930 ~ 49941
function Func2125 takes integer loc_integer01 returns integer
    if loc_integer01==1 then
        return 'A10Z'
    elseif loc_integer01==2 then
        return 'A111'
    elseif loc_integer01==3 then
        return 'A10Y'
    elseif loc_integer01==4 then
        return 'A110'
    endif
    return 0
endfunction
