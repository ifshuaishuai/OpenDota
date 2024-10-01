
// 90071 ~ 90085
function Func4333 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2IT')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit03,'A2IU')
    call SetUnitAbilityLevel(loc_unit03,'A2IU',loc_integer02)
    call IssueImmediateOrder(loc_unit03,"thunderclap")
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction
