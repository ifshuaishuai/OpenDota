
// 44386 ~ 44397
function Func1756 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01,boolean loc_boolean01 returns real
    local unit loc_unit04
    local real loc_real01=Func0147(loc_unit02,loc_unit03)
    if loc_boolean01==false then
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit04,'A004')
        call SetUnitAbilityLevel(loc_unit04,'A004',loc_integer01)
        call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit03)
        set loc_unit04=null
    endif
    return loc_real01/1000
endfunction
