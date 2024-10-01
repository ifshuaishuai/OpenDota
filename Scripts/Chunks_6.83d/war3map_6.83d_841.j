
// 87884 ~ 87895
function Func4209 takes nothing returns boolean
    local unit loc_unit01=GetSummonedUnit()
    if IsUnitIllusion(loc_unit01)==true and GetUnitTypeId(loc_unit01)=='N0MH' then
        call Func4201(loc_unit01)
        call UnitRemoveAbility(loc_unit01,'A2JF')
        call Func4202(loc_unit01)
        call UnitAddAbility(loc_unit01,'A2H2')
        call UnitRemoveAbility(loc_unit01,'A2H2')
    endif
    set loc_unit01=null
    return false
endfunction

// 87897 ~ 87905
function Func4210 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4208))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4209))
    set loc_trigger01=null
endfunction
