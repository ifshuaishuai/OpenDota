
// 48117 ~ 48130
function Func2013 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02 returns nothing
    local unit loc_unit03
    if loc_integer02==1 then
        call Func0365(loc_unit01,loc_unit02,0.75+0.75*loc_integer01)
        call Func0115(loc_unit01,loc_unit02,1,loc_integer01*50+50)
    else
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A0SG')
        call SetUnitAbilityLevel(loc_unit03,'A0SG',loc_integer01)
        call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
        call Func0115(loc_unit01,loc_unit02,1,loc_integer01*50+50+100)
    endif
    set loc_unit03=null
endfunction

// 48132 ~ 48137
function Func2014 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A0SF')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    set loc_unit03=null
endfunction
