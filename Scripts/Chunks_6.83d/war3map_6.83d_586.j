
// 67166 ~ 67168
function Func3151 takes nothing returns boolean
    return GetSpellAbilityId()==('A0NB')
endfunction

// 67170 ~ 67172
function Func3152 takes nothing returns boolean
    return Func0098(GetFilterUnit())==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and(Func0284(GetFilterUnit())==false or IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit002))==true)and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitTypeId(GetFilterUnit())!='n00L'
endfunction
