
// 54444 ~ 54460
function Func2400 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(827)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A2YK')
        call UnitRemoveAbility(loc_unit01,'B0HD')
        call UnitRemoveAbility(loc_unit01,'A2YM')
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(827),((0)*1.0))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 54462 ~ 54481
function Func2401 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(827)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A03S')
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(827),(((TimerGetElapsed(timer001))+0.5)*1.0))
    call Func0115(loc_unit01,loc_unit02,2,25*loc_integer02-10)
    if Func0275(loc_unit02)==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.5+0.01,false)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2400))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
        call Func0193(loc_unit02,'A2YK')
        call Func0193(loc_unit02,'A2YM')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2YK',false)
    endif
    set loc_trigger01=null
endfunction

// 54483 ~ 54502
function Func2402 takes nothing returns boolean
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
            call Func2401(loc_unit01,loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 54504 ~ 54524
function Func2403 takes nothing returns boolean
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if GetAttacker()==loc_unit01 and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4347))))==1)==false and IsUnitType(loc_unit02,UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(loc_unit02,'A04R')==0 then
        if GetRandomReal(0,100)<40 then
            call Func0044(loc_unit01,4347,0.1)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func2402))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 54526 ~ 54538
function Func2404 takes nothing returns boolean
    local trigger loc_trigger01
    local integer loc_integer01
    if GetLearnedSkill()=='A03S' and GetUnitAbilityLevel(GetTriggerUnit(),'A03S')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2403))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
        set loc_trigger01=null
    endif
    return false
endfunction

// 54540 ~ 54545
function Func2405 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2404))
    set loc_trigger01=null
endfunction
