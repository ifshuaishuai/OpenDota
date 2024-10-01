
// 47642 ~ 47644
function Func1977 takes unit loc_unit01 returns boolean
    return IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false and IsUnitType(loc_unit01,UNIT_TYPE_ANCIENT)==false and GetUnitTypeId(loc_unit01)!='n01E' and GetUnitTypeId(loc_unit01)!='n019'
endfunction
