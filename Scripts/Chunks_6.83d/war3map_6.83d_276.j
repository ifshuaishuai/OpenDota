
// 46886 ~ 46894
function Func1915 takes nothing returns boolean
    if GetSpellAbilityId()=='A14O' then
        if GetUnitState(GetTriggerUnit(),UNIT_STATE_MANA)<(15+0.07*GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_MANA))then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0G8'))
        endif
    endif
    return false
endfunction

// 46896 ~ 46904
function Func1916 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1914))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1915))
    set loc_trigger01=null
endfunction
