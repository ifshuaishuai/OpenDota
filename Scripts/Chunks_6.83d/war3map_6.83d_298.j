
// 47732 ~ 47737
function Func1985 takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0B1'))then
        return false
    endif
    return true
endfunction

// 47739 ~ 47751
function Func1986 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local location loc_location02=GetSpellTargetLoc()
    call Func1984(GetLocationX(loc_location02),GetLocationY(loc_location02))
    call CreateNUnitsAtLocFacingLocBJ(1,'e00E',GetOwningPlayer(GetTriggerUnit()),loc_location02,loc_location02)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitApplyTimedLifeBJ(11.00,'BTLF',bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit,'A0B2')
    call SetUnitAbilityLevelSwapped('A0B2',bj_lastCreatedUnit,GetUnitAbilityLevelSwapped('A0B1',GetTriggerUnit()))
    call IssuePointOrderLoc(bj_lastCreatedUnit,"deathanddecay",loc_location02)
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
endfunction

// 47753 ~ 47758
function Func1987 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1985))
    call TriggerAddAction(loc_trigger01,function Func1986)
endfunction
