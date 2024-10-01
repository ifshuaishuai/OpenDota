
// 50341 ~ 50352
function Func2149 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=Atan2(loc_real02-real297,loc_real01-real296)
    set loc_real01=Func0126(loc_real01+25*Cos(loc_real03))
    set loc_real02=Func0129(loc_real02+25*Sin(loc_real03))
    call Func0180(loc_real01,loc_real02,150)
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    set loc_unit01=null
endfunction
