
// 71185 ~ 71187
function Func3369 takes nothing returns boolean
    return GetSpellAbilityId()=='A29J' or GetSpellAbilityId()=='A1MP'
endfunction

// 71189 ~ 71212
function Func3370 takes nothing returns boolean
    if(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==true)then
        return false
    endif
    if(GetUnitAbilityLevelSwapped('A04R',GetFilterUnit())==1)then
        return false
    endif
    if(IsUnitAliveBJ(GetFilterUnit())==false)then
        return false
    endif
    if(GetUnitTypeId(GetFilterUnit())=='o003')then
        return false
    endif
    if(IsUnitEnemy(GetFilterUnit(),GetTriggerPlayer())==false)then
        return false
    endif
    if(GetTriggerUnit()==GetFilterUnit())then
        return false
    endif
    if(IsUnitVisible(GetFilterUnit(),GetTriggerPlayer())==false)then
        return false
    endif
    return true
endfunction

// 71214 ~ 71230
function Func3371 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetUnitLoc(loc_unit01)
    local integer loc_integer01=GetUnitAbilityLevelSwapped('A29J',GetTriggerUnit())
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevelSwapped('A1MP',GetTriggerUnit())
    endif
    call CreateNUnitsAtLoc(1,'e00C',GetOwningPlayer(GetEnumUnit()),loc_location01,bj_UNIT_FACING)
    call UnitAddAbility(bj_lastCreatedUnit,'A0HH')
    call SetUnitAbilityLevelSwapped('A0HH',bj_lastCreatedUnit,loc_integer01)
    call UnitApplyTimedLifeBJ(2.00,'BTLF',bj_lastCreatedUnit)
    call IssueTargetOrder(bj_lastCreatedUnit,"cripple",GetEnumUnit())
    call SetUnitPathing(bj_lastCreatedUnit,false)
    call SetUnitInvulnerable(bj_lastCreatedUnit,true)
    call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
    call RemoveLocation(loc_location01)
endfunction

// 71232 ~ 71248
function Func3372 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetUnitLoc(loc_unit01)
    local integer loc_integer01=GetUnitAbilityLevelSwapped('A29J',GetTriggerUnit())
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevelSwapped('A1MP',GetTriggerUnit())
    endif
    call CreateNUnitsAtLoc(1,'e00C',GetOwningPlayer(GetEnumUnit()),loc_location01,bj_UNIT_FACING)
    call UnitAddAbility(bj_lastCreatedUnit,'A0HH')
    call SetUnitAbilityLevelSwapped('A0HH',bj_lastCreatedUnit,loc_integer01)
    call UnitApplyTimedLifeBJ(2.00,'BTLF',bj_lastCreatedUnit)
    call IssueTargetOrder(bj_lastCreatedUnit,"cripple",GetEnumUnit())
    call SetUnitPathing(bj_lastCreatedUnit,false)
    call SetUnitInvulnerable(bj_lastCreatedUnit,true)
    call UnitAddAbility(bj_lastCreatedUnit,'Aloc')
    call RemoveLocation(loc_location01)
endfunction
