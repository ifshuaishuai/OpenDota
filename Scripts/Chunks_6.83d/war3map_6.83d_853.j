
// 88901 ~ 88906
function Func4263 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01 returns nothing
    call GroupAddUnit(group040,loc_unit03)
    call Func0365(loc_unit01,loc_unit03,1.25+0.25*loc_integer01)
    call Func0115(loc_unit01,loc_unit03,1,40*loc_integer01)
    call KillUnit(loc_unit02)
endfunction
