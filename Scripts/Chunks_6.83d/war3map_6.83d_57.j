
// 18938 ~ 18954
function Func0728 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(693)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A266')
        call UnitRemoveAbility(loc_unit01,'B02I')
        call UnitRemoveAbility(loc_unit01,'A26C')
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(693),((0)*1.0))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 18956 ~ 18971
function Func0729 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(693)))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(693),(((TimerGetElapsed(timer001))+real198)*1.0))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,real198+0.01,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0728))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call Func0193(loc_unit01,'A266')
    call Func0193(loc_unit01,'A26C')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A266',false)
    set loc_trigger01=null
endfunction

// 18973 ~ 18994
function Func0730 takes nothing returns boolean
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
                call Func0729(loc_unit02)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 18996 ~ 19015
function Func0731 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4309))))==1)==false then
        call Func0044(loc_unit01,4309,0.2)
        if GetRandomReal(0,100)<real197 then
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func0730))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        endif
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction
