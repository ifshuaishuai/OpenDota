
// 71250 ~ 71266
function Func3373 takes nothing returns nothing
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

// 71268 ~ 71285
function Func3374 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRangeOfLoc(loc_group01,loc_location01,700,Condition(function Func3370))
    call ForGroup(loc_group01,function Func3371)
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsInRangeOfLoc(loc_group01,loc_location01,400,Condition(function Func3370))
    call ForGroup(loc_group01,function Func3372)
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsInRangeOfLoc(loc_group01,loc_location01,200,Condition(function Func3370))
    call ForGroup(loc_group01,function Func3373)
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
endfunction

// 71287 ~ 71292
function Func3375 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3369))
    call TriggerAddAction(loc_trigger01,function Func3374)
endfunction
