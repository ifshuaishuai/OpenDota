
// 77618 ~ 77620
function Func3750 takes nothing returns boolean
    return GetSpellAbilityId()=='A08X'
endfunction

// 77622 ~ 77629
function Func3751 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetSpellAbilityUnit())
    call CreateNUnitsAtLocFacingLocBJ(1,'e00E',GetOwningPlayer(GetSpellAbilityUnit()),loc_location01,loc_location01)
    call RemoveLocation(loc_location01)
    call UnitAddAbility(bj_lastCreatedUnit,'A09C')
    call SetUnitAbilityLevelSwapped('A09C',bj_lastCreatedUnit,GetUnitAbilityLevelSwapped('A08X',GetSpellAbilityUnit()))
    call IssueTargetOrder(bj_lastCreatedUnit,"bloodlust",GetSpellAbilityUnit())
endfunction

// 77631 ~ 77636
function Func3752 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3750))
    call TriggerAddAction(loc_trigger01,function Func3751)
endfunction

// 77638 ~ 77670
function Func3753 takes unit loc_unit01,integer loc_integer01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A1M3')
    call UnitRemoveAbility(loc_unit01,'A1M4')
    call UnitRemoveAbility(loc_unit01,'A1MC')
    call UnitRemoveAbility(loc_unit01,'A1M7')
    call UnitRemoveAbility(loc_unit01,'A1M8')
    call UnitRemoveAbility(loc_unit01,'A1M9')
    call UnitRemoveAbility(loc_unit01,'A1MA')
    call UnitRemoveAbility(loc_unit01,'A1M5')
    call UnitRemoveAbility(loc_unit01,'A1MB')
    call UnitRemoveAbility(loc_unit01,'A1M6')
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A1M3')
    elseif loc_integer01==2 then
        call Func0193(loc_unit01,'A1M4')
    elseif loc_integer01==3 then
        call Func0193(loc_unit01,'A1MC')
    elseif loc_integer01==4 then
        call Func0193(loc_unit01,'A1M7')
    elseif loc_integer01==5 then
        call Func0193(loc_unit01,'A1M8')
    elseif loc_integer01==6 then
        call Func0193(loc_unit01,'A1M9')
    elseif loc_integer01==7 then
        call Func0193(loc_unit01,'A1MA')
    elseif loc_integer01==8 then
        call Func0193(loc_unit01,'A1M5')
    elseif loc_integer01==9 then
        call Func0193(loc_unit01,'A1MB')
    elseif loc_integer01==10 then
        call Func0193(loc_unit01,'A1M6')
    endif
endfunction

// 77672 ~ 77687
function Func3754 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_integer01=GetHandleId(loc_unit01)
    set loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(427)))
    set loc_integer02=Func0139(loc_integer02-1,0)
    call SaveInteger(hashtable001,(loc_integer01),(427),(loc_integer02))
    call Func3753(loc_unit01,loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
