
// 53094 ~ 53102
function Func2322 takes unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A1GB')
    call SetUnitAbilityLevel(loc_unit02,'A1GB',loc_integer01)
    call IssueTargetOrder(loc_unit02,"invisibility",loc_unit01)
    call Func0193(loc_unit01,'A23O')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A23O',false)
    set loc_unit02=null
endfunction
