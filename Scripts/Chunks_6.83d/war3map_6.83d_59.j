
// 19278 ~ 19295
function Func0741 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local item loc_item01=(LoadItemHandle(hashtable001,(loc_integer01),(96)))
    if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==loc_item01 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4310))))==1)==false then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(GetUnitState(loc_unit01,UNIT_STATE_LIFE)-real199*0.1,1))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction

// 19297 ~ 19317
function Func0742 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DROP_ITEM)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0741))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveItemHandle(hashtable001,(loc_integer01),(96),(GetManipulatedItem()))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.7/25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DROP_ITEM)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0740))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveItemHandle(hashtable001,(loc_integer01),(96),(GetManipulatedItem()))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 19319 ~ 19324
function Func0743 takes nothing returns boolean
    if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and(Func0399(GetManipulatedItem())==integer237 or Func0399(GetManipulatedItem())==integer239)then
        call Func0742()
    endif
    return false
endfunction
