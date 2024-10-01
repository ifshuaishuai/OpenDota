
// 74070 ~ 74078
function Func3531 takes nothing returns boolean
    if(IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false))and GetUnitTypeId(GetFilterUnit())!='n00L' then
        if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)<real358 then
            set real358=GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)
            set unit359=GetFilterUnit()
        endif
    endif
    return false
endfunction
