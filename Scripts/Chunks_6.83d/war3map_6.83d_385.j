
// 53481 ~ 53489
function Func2343 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),real305,real306)
    if loc_real01<real304 and IsUnitVisible(loc_unit01,GetOwningPlayer(unit300))==true and(IsUnitType(loc_unit01,UNIT_TYPE_HERO)==true or(IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==true and Func0283(loc_unit01)))then
        set unit299=GetEnumUnit()
        set real304=loc_real01
    endif
    set loc_unit01=null
endfunction
