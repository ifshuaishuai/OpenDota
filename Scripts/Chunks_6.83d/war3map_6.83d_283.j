
// 47151 ~ 47165
function Func1938 takes nothing returns boolean
    if((GetSpellAbilityId()=='A0SK'))then
        return true
    endif
    if((GetSpellAbilityId()=='A0DL'))then
        return true
    endif
    if((GetSpellAbilityId()=='A0DH'))then
        return true
    endif
    if((GetSpellAbilityId()=='A1OB'))then
        return true
    endif
    return false
endfunction

// 47167 ~ 47175
function Func1939 takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0DJ',GetSpellAbilityUnit())>0))then
        return false
    endif
    if(not Func1938())then
        return false
    endif
    return true
endfunction

// 47177 ~ 47184
function Func1940 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'e00E',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
    call UnitAddAbility(bj_lastCreatedUnit,'A0DI')
    call SetUnitAbilityLevelSwapped('A0DI',bj_lastCreatedUnit,GetUnitAbilityLevelSwapped('A0DJ',GetSpellAbilityUnit()))
    call IssueImmediateOrder(bj_lastCreatedUnit,"stomp")
    call RemoveLocation(loc_location01)
endfunction

// 47186 ~ 47191
function Func1941 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1939))
    call TriggerAddAction(loc_trigger01,function Func1940)
endfunction
