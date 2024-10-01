
// 52556 ~ 52558
function Func2281 takes nothing returns boolean
    return GetSpellAbilityId()==('A08N')
endfunction

// 52560 ~ 52562
function Func2282 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')!=1 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction
