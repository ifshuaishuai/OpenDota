
// 79240 ~ 79258
function Func3838 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01,boolean loc_boolean01 returns real
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit03),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    if loc_boolean01 then
        call Func0193(loc_unit04,'A0WY')
    else
        call Func0193(loc_unit04,'A0NL')
    endif
    call IssueTargetOrder(loc_unit04,"thunderbolt",loc_unit03)
    if IsUnitType(loc_unit03,UNIT_TYPE_HERO)==false then
        call Func0117(loc_unit01,loc_unit03,1,50+25*loc_integer01,0.4)
    else
        call Func0117(loc_unit01,loc_unit03,1,50,0.4)
    endif
    if loc_boolean01 then
        return((GetUnitX(loc_unit03)-GetUnitX(loc_unit02))*(GetUnitX(loc_unit03)-GetUnitX(loc_unit02))+(GetUnitY(loc_unit03)-GetUnitY(loc_unit02))*(GetUnitY(loc_unit03)-GetUnitY(loc_unit02)))/1000000
    endif
    set loc_unit04=null
    return((GetUnitX(loc_unit03)-GetUnitX(loc_unit02))*(GetUnitX(loc_unit03)-GetUnitX(loc_unit02))+(GetUnitY(loc_unit03)-GetUnitY(loc_unit02))*(GetUnitY(loc_unit03)-GetUnitY(loc_unit02)))/360000
endfunction
