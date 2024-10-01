
// 91010 ~ 91025
function Func4383 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(753)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A2LE')
        call UnitRemoveAbility(loc_unit01,'B0G1')
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(753),((0)*1.0))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 91027 ~ 91048
function Func4384 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local group loc_group01=Func0030()
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(753),(((TimerGetElapsed(timer001))+real403)*1.0))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4383))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call Func0193(loc_unit02,'A2LE')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2LE',false)
    set unit412=loc_unit01
    set integer556=GetUnitAbilityLevel(loc_unit01,'A2L9')
    set integer555=0
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func4379))
    call ForGroup(loc_group01,function Func4377)
    call Func0029(loc_group01)
    call Func4382(I2S(integer555),loc_unit02,loc_unit01)
    set loc_trigger01=null
endfunction

// 91050 ~ 91071
function Func4385 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if GetEventDamageSource()==loc_unit01 and GetEventDamage()>0 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if Func0275(loc_unit02)==false then
                call Func4384(loc_unit01,loc_unit02)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 91073 ~ 91090
function Func4386 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4325))))==1)==false then
        call Func0044(loc_unit01,4325,0.2)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4385))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 91092 ~ 91097
function Func4387 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A2L9')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func4386()
    endif
    return false
endfunction

// 91099 ~ 91107
function Func4388 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4381))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4387))
    set loc_trigger01=null
endfunction
