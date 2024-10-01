
// 74400 ~ 74416
function Func3548 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4299))))==1)==false then
        call UnitRemoveAbility(loc_unit01,'B04R')
    endif
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(379))))
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(380))))
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(381))))
    call RemoveUnit((LoadUnitHandle(hashtable001,(loc_integer01),(382))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 74418 ~ 74432
function Func3549 takes unit loc_unit01,integer loc_integer01,unit loc_unit02,unit loc_unit03,unit loc_unit04,unit loc_unit05 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01
    set loc_real01=1.5
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4299)),(2))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3548))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(379),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(380),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer02),(381),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer02),(382),(loc_unit05))
    set loc_trigger01=null
endfunction
