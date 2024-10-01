
// 77412 ~ 77422
function Func3734 takes nothing returns nothing
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0MY')
    if loc_integer01>0 then
        call Func0193(loc_unit02,'A0MY')
        call SetUnitAbilityLevel(loc_unit02,'A0MY',loc_integer01)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 77424 ~ 77430
function Func3735 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetSummonedUnit())
    if loc_integer01=='o00T' or loc_integer01=='o00U' or loc_integer01=='o00V' or loc_integer01=='o00W' then
        call Func3734()
    endif
    return false
endfunction

// 77432 ~ 77437
function Func3736 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3735))
    set loc_trigger01=null
endfunction
