
// 73319 ~ 73320
function Func3490 takes nothing returns nothing
endfunction

// 73322 ~ 73348
function Func3491 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if IsUnitType(GetEventDamageSource(),UNIT_TYPE_HERO)==true then
            call Func3489(loc_unit01,GetEventDamage()-1)
        else
            call Func3489(loc_unit01,GetEventDamage()-0.25)
        endif
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),400+300*4+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3490)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 73350 ~ 73363
function Func3492 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSummonedUnit()
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3491))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(GetSummoningUnit(),'A09D')))
    call SetUnitAbilityLevelSwapped('A08T',GetSummonedUnit(),GetUnitAbilityLevelSwapped('A09D',GetSummoningUnit()))
    call SetUnitAbilityLevelSwapped('A0CF',GetSummonedUnit(),GetUnitAbilityLevelSwapped('A09D',GetSummoningUnit()))
    call IssueImmediateOrder(GetSummonedUnit(),"manaflareon")
endfunction

// 73365 ~ 73370
function Func3493 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3488))
    call TriggerAddAction(loc_trigger01,function Func3492)
endfunction
