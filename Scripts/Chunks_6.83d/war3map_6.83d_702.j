
// 75314 ~ 75329
function Func3616 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(685)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if loc_real01<(TimerGetElapsed(timer001))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(685),((0)*1.0))
        call UnitRemoveAbility(loc_unit01,'A24H')
        call UnitRemoveAbility(loc_unit01,'B0EC')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 75331 ~ 75342
function Func3617 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,'A24H')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A24H',false)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(685),(((TimerGetElapsed(timer001))+real361-0.01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,real361,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3616))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction
