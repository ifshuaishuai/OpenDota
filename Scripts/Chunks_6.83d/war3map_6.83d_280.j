
// 46986 ~ 47009
function Func1926 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(805)))
    local real loc_real02=0.75
    local real loc_real03=20
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        set loc_real02=1
    endif
    if GetUnitState(loc_unit02,UNIT_STATE_LIFE)<=loc_real03*loc_real02 then
        set loc_real03=GetUnitState(loc_unit02,UNIT_STATE_LIFE)/loc_real02-2
    endif
    call Func0115(loc_unit01,loc_unit02,1,loc_real03)
    if(TimerGetElapsed(timer001))>=loc_real01 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 47011 ~ 47027
function Func1927 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(805)))
    if loc_real01>(TimerGetElapsed(timer001))then
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(805),(((TimerGetElapsed(timer001))+5)*1.0))
    else
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(805),(((TimerGetElapsed(timer001))+5)*1.0))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1926))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_trigger01=null
endfunction

// 47029 ~ 47049
function Func1928 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 then
            call DisableTrigger(loc_trigger01)
            call Func1927(loc_unit01,loc_unit02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 47051 ~ 47064
function Func1929 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1928))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 47066 ~ 47071
function Func1930 takes nothing returns boolean
    if GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false and GetUnitAbilityLevel(GetAttacker(),'A0O4')>0 then
        call Func1929()
    endif
    return false
endfunction

// 47073 ~ 47082
function Func1931 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1930))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction
