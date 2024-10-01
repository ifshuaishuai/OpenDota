
// 71555 ~ 71569
function Func3395 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(304)))
    if loc_unit01!=null and Func0124()and Func0194(loc_unit01)==false then
        call UnitRemoveAbility(loc_unit01,'A116')
        call UnitRemoveAbility(loc_unit01,'A117')
        call SetUnitAbilityLevel(loc_unit01,'S00A',5)
        call SetUnitAbilityLevel(loc_unit01,'A08C',5)
    elseif loc_unit01!=null and Func0124()==false and Func0194(loc_unit01)==false then
        call Func0193(loc_unit01,'A116')
        call Func0193(loc_unit01,'A117')
        call SetUnitAbilityLevel(loc_unit01,'S00A',GetUnitAbilityLevel(loc_unit01,'A086'))
        call SetUnitAbilityLevel(loc_unit01,'A08C',GetUnitAbilityLevel(loc_unit01,'A08E'))
    endif
endfunction

// 71571 ~ 71605
function Func3396 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggerUnit())
    local trigger loc_trigger01
    if((LoadBoolean(hashtable001,(loc_integer01),(306)))==false)then
        call SaveBoolean(hashtable001,(loc_integer01),(306),(true))
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEventPeriodic(loc_trigger01,2.00)
        call TriggerRegisterGameStateEventTimeOfDay(loc_trigger01,LESS_THAN,6.00)
        call TriggerRegisterGameStateEventTimeOfDay(loc_trigger01,GREATER_THAN,18.00)
        call TriggerAddAction(loc_trigger01,function Func3395)
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(304),(GetTriggerUnit()))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3394))
        call SaveUnitHandle(hashtable001,(loc_integer01),(304),(GetTriggerUnit()))
        call SaveUnitHandle(hashtable001,(loc_integer01),(305),(CreateUnit(GetOwningPlayer(GetTriggerUnit()),'o01A',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)))
    endif
    if(GetLearnedSkill()=='A086')then
        call Func0193(GetTriggerUnit(),'S00A')
        if(Func0124())then
            call SetUnitAbilityLevel(GetTriggerUnit(),'S00A',5)
        else
            call SetUnitAbilityLevel(GetTriggerUnit(),'S00A',GetUnitAbilityLevel(GetTriggerUnit(),'A086'))
        endif
    endif
    if(GetLearnedSkill()=='A08E')then
        call UnitAddAbility(GetTriggerUnit(),'A08C')
        if(Func0124())then
            call SetUnitAbilityLevel(GetTriggerUnit(),'A08C',5)
        else
            call SetUnitAbilityLevel(GetTriggerUnit(),'A08C',GetUnitAbilityLevel(GetTriggerUnit(),'A08E'))
        endif
    endif
endfunction

// 71607 ~ 71612
function Func3397 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3393))
    call TriggerAddAction(loc_trigger01,function Func3396)
endfunction
