
// 53062 ~ 53064
function Func2317 takes nothing returns boolean
    return GetSpellAbilityId()=='A07Z'
endfunction

// 53066 ~ 53068
function Func2318 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0
endfunction
