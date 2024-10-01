
// 63477 ~ 63479
function Func2938 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'B02J')>0 or GetUnitAbilityLevel(loc_unit01,'BUsp')>0 or GetUnitAbilityLevel(loc_unit01,'Bust')>0 or Func0108(loc_unit01)
endfunction
