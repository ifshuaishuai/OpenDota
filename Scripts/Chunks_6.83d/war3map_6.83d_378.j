
// 53070 ~ 53076
function Func2319 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e022',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),270)
    call Func0193(loc_unit02,'A06T')
    call SetUnitAbilityLevel(loc_unit02,'A06T',GetUnitAbilityLevel(loc_unit01,'A07Z'))
    call IssueTargetOrder(loc_unit02,"entanglingroots",GetEnumUnit())
endfunction

// 53078 ~ 53085
function Func2320 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func2318)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),700,loc_boolexpr01)
    call ForGroup(loc_group01,function Func2319)
    call Func0029(loc_group01)
endfunction

// 53087 ~ 53092
function Func2321 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2317))
    call TriggerAddAction(loc_trigger01,function Func2320)
endfunction
