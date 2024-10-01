
// 44699 ~ 44704
function Func1783 takes nothing returns boolean
    if(not(GetUnitUserData(GetEnumUnit())==4))then
        return false
    endif
    return true
endfunction

// 44706 ~ 44717
function Func1784 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(GetEnumUnit(),loc_location01)
    if(Func1783())then
        call IssueTargetOrder(GetEnumUnit(),"acidbomb",GetSpellTargetUnit())
    else
        call IncUnitAbilityLevel(GetEnumUnit(),'A0FZ')
        call IssueTargetOrder(GetEnumUnit(),"acidbomb",GetSpellTargetUnit())
        call SetUnitUserData(GetEnumUnit(),(GetUnitUserData(GetEnumUnit())+1))
    endif
    call RemoveLocation(loc_location01)
endfunction

// 44719 ~ 44740
function Func1785 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local location loc_location02=GetUnitLoc(GetSpellTargetUnit())
    local group loc_group01=Func0030()
    if(UnitHasBuffBJ(GetSpellTargetUnit(),'B02U')==true)then
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetSpellTargetUnit()),Condition(function Func1782))
        call ForGroupBJ(loc_group01,function Func1784)
    else
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetSpellTargetUnit()),Condition(function Func1782))
        call ForGroupBJ(loc_group01,function Func1781)
        call DisableTrigger(trigger030)
        call CreateNUnitsAtLocFacingLocBJ(1,'e02E',GetOwningPlayer(GetSpellTargetUnit()),loc_location01,loc_location02)
        call EnableTrigger(trigger030)
        call UnitAddAbility(bj_lastCreatedUnit,'A0FZ')
        call SetUnitAbilityLevelSwapped('A0FZ',bj_lastCreatedUnit,((GetUnitAbilityLevelSwapped('A0FW',GetTriggerUnit())*4)-3))
        call IssueTargetOrder(bj_lastCreatedUnit,"acidbomb",GetSpellTargetUnit())
        call SetUnitUserData(bj_lastCreatedUnit,1)
    endif
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
endfunction

// 44742 ~ 44747
function Func1786 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1779))
    call TriggerAddAction(loc_trigger01,function Func1785)
endfunction
