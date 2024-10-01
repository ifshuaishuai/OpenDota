
// 52722 ~ 52728
function Func2293 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())=='Ogrh' and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
        call SetUnitFacing(GetFilterUnit(),real009)
        call SetUnitAnimation(GetFilterUnit(),"spell")
    endif
    return false
endfunction

// 52730 ~ 52738
function Func2294 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    set real009=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),700,Condition(function Func2293))
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 52740 ~ 52749
function Func2295 takes nothing returns boolean
    if GetSpellAbilityId()=='A10D' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func2292()
        else
            call Func2294()
        endif
    endif
    return false
endfunction

// 52751 ~ 52767
function Func2296 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2295))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2295))
    call Func0132('A10C')
    call Func0132('A10H')
    call Func0132('A10G')
    call Func0132('A10I')
    call Func0132('A10F')
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2286))
    set loc_trigger01=null
endfunction
