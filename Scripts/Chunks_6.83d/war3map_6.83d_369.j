
// 52564 ~ 52566
function Func2283 takes nothing returns nothing
    call Func0115(GetTriggerUnit(),GetEnumUnit(),3,real002)
endfunction

// 52568 ~ 52580
function Func2284 takes nothing returns nothing
    local boolexpr loc_boolexpr01=Condition(function Func2282)
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(GetSpellTargetUnit())
    local real loc_real02=GetUnitY(GetSpellTargetUnit())
    set real002=90*GetUnitAbilityLevel(GetTriggerUnit(),('A08N'))
    if GetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE)>1 then
        call SetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE,GetUnitState(GetSpellTargetUnit(),UNIT_STATE_LIFE)+real002)
    endif
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,260+25,loc_boolexpr01)
    call ForGroup(loc_group01,function Func2283)
    call Func0029(loc_group01)
endfunction

// 52582 ~ 52587
function Func2285 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2281))
    call TriggerAddAction(loc_trigger01,function Func2284)
endfunction
