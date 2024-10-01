
// 55811 ~ 55832
function Func2492 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A1CA')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A1CA')
        call UnitRemoveAbility(GetEnumUnit(),'B0BP')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A1C9')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A1C9')
        call UnitRemoveAbility(GetEnumUnit(),'B0BP')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A1CB')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A1CB')
        call UnitRemoveAbility(GetEnumUnit(),'B0BP')
    endif
    if GetUnitAbilityLevel(GetEnumUnit(),'A1CC')>0 then
        call UnitRemoveAbility(GetEnumUnit(),'A1CC')
        call UnitRemoveAbility(GetEnumUnit(),'B0BP')
    endif
    call Func0424(GetEnumUnit(),0)
endfunction
