
// 59863 ~ 59865
function Func2730 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and Func0468(GetUnitTypeId(GetFilterUnit()))==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit321))==true
endfunction
