
// 21437 ~ 21442
function Func0833 takes unit loc_unit01,real loc_real01 returns boolean
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)or GetUnitAbilityLevel(loc_unit01,'A04R')>0 then
        return loc_real01>5
    endif
    return true
endfunction
