
// 58690 ~ 58695
function Func2653 takes nothing returns nothing
    if(IsTerrainPathable(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),PATHING_TYPE_WALKABILITY))then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n03B'))
    endif
endfunction

// 58697 ~ 58702
function Func2654 takes nothing returns boolean
    if GetSpellAbilityId()=='A0IN' or GetSpellAbilityId()=='A1AW' then
        call Func2653()
    endif
    return false
endfunction

// 58704 ~ 58712
function Func2655 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2652))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2654))
    set loc_trigger01=null
endfunction
