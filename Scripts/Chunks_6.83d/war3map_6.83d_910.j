
// 93067 ~ 93073
function Func4495 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A2WG')
    call SetUnitAbilityLevel(loc_unit03,'A2WG',loc_integer01)
    call IssueTargetOrder(loc_unit03,"drunkenhaze",loc_unit02)
    set loc_unit03=null
endfunction
