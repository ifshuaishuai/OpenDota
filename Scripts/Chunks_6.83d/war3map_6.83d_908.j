
// 92941 ~ 92964
function Func4487 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0VC')
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),400+25,Condition(function Func0342))
    if FirstOfGroup(loc_group01)==null then
        if GetUnitAbilityLevel(loc_unit01,'A2NX')!=loc_integer02 then
            call Func0193(loc_unit01,'A2NX')
            call SetUnitAbilityLevel(loc_unit01,'A2NX',loc_integer02)
        endif
    else
        if GetUnitAbilityLevel(loc_unit01,'A2NX')>0 then
            call UnitRemoveAbility(loc_unit01,'A2NX')
        endif
    endif
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_trigger01=null
    set loc_group01=null
    return false
endfunction

// 92966 ~ 92975
function Func4488 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4487))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 92977 ~ 92982
function Func4489 takes nothing returns boolean
    if GetLearnedSkill()=='A0VC' and GetUnitAbilityLevel(GetTriggerUnit(),'A0VC')==1 then
        call Func4488()
    endif
    return false
endfunction

// 92984 ~ 92989
function Func4490 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4489))
    set loc_trigger01=null
endfunction
