
// 76116 ~ 76126
function Func3658 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2KX')
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A08Q')
    call SetUnitAbilityLevel(loc_unit02,'A08Q',loc_integer01)
    call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 76128 ~ 76133
function Func3659 takes nothing returns boolean
    if GetSpellAbilityId()=='A2KX' and GetUnitTypeId(GetTriggerUnit())=='Eevi' then
        call Func3658()
    endif
    return false
endfunction

// 76135 ~ 76143
function Func3660 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3659))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3657))
    set loc_trigger01=null
endfunction
