
// 63577 ~ 63587
function Func2943 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    if Func0181(loc_real01,loc_real02)==false or(IsPointInRegion(region006,((loc_real01)*1.0),((loc_real02)*1.0)))then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n03K'))
    endif
    call RemoveLocation(loc_location01)
    set loc_location01=null
endfunction

// 63589 ~ 63594
function Func2944 takes nothing returns boolean
    if GetSpellAbilityId()=='A0QE' then
        call Func2943()
    endif
    return false
endfunction

// 63596 ~ 63604
function Func2945 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2942))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2944))
    set loc_trigger01=null
endfunction
