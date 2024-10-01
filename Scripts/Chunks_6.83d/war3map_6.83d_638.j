
// 71057 ~ 71059
function Func3358 takes nothing returns boolean
    return GetSpellAbilityId()==('A0EY')or GetSpellAbilityId()==('A0FH')or GetSpellAbilityId()==('A0F0')
endfunction

// 71061 ~ 71063
function Func3359 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')!=1
endfunction
