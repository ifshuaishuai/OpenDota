
// 51229 ~ 51231
function Func2207 takes nothing returns boolean
    return GetSpellAbilityId()==('A0L8')
endfunction

// 51233 ~ 51235
function Func2208 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A1RB')==0 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction
