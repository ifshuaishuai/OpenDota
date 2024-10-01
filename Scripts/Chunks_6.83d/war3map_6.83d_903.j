
// 92525 ~ 92553
function Func4471 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2M9')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2M9')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2MA')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2MA')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2LN')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2LN')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2M8')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2M8')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2NP')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2NP')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2NS')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2NS')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2NR')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2NR')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A2NQ')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A2NQ')
    endif
endfunction
