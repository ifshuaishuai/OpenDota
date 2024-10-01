
// 42651 ~ 42657
function Func1665 takes nothing returns boolean
    if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsUnitInGroup(GetFilterUnit(),group007)==false then
        call GroupAddUnit(group007,GetFilterUnit())
        return true
    endif
    return false
endfunction
