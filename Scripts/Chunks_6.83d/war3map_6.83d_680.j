
// 73650 ~ 73659
function Func3510 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01 returns nothing
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit04,'A1AK')
    call SetUnitAbilityLevel(loc_unit04,'A1AK',loc_integer01)
    call IssueTargetOrder(loc_unit04,"chainlightning",loc_unit03)
    call Func0193(loc_unit04,'A18D')
    call SetUnitAbilityLevel(loc_unit04,'A18D',loc_integer01)
    call IssueTargetOrder(loc_unit04,"purge",loc_unit03)
    set loc_unit04=null
endfunction

// 73661 ~ 73673
function Func3511 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02
    if GetSpellTargetUnit()==loc_unit01 and Func3509(GetSpellAbilityId())==true and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(loc_unit01))==false and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1E6')
        call Func3510(loc_unit01,loc_unit01,GetTriggerUnit(),loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 73675 ~ 73684
function Func3512 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3511))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 73686 ~ 73691
function Func3513 takes nothing returns boolean
    if GetLearnedSkill()=='A1E6' and GetUnitAbilityLevel(GetTriggerUnit(),'A1E6')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3512()
    endif
    return false
endfunction

// 73693 ~ 73698
function Func3514 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3513))
    set loc_trigger01=null
endfunction
