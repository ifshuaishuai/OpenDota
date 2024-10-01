
// 55452 ~ 55458
function Func2469 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0044(loc_unit01,4343,5)
    call UnitAddAbility(loc_unit03,'A1GZ')
    call IssueTargetOrder(loc_unit03,"ensnare",loc_unit02)
    set loc_unit03=null
endfunction

// 55460 ~ 55480
function Func2470 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call Func2469(loc_unit02,loc_unit01)
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

// 55482 ~ 55495
function Func2471 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2470))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 55497 ~ 55507
function Func2472 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if GetUnitTypeId(loc_unit01)!='n01G' and GetUnitTypeId(loc_unit01)!='n01C' then
        return
    endif
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4342))))==1)==false and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4343))))==1)==false and GetRandomInt(0,100)<20 then
        call Func0044(loc_unit01,4342,.3)
        call Func2471()
    endif
    return
endfunction
