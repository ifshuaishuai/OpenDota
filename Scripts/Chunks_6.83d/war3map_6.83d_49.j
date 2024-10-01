
// 17973 ~ 17987
function Func0675 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(98)))
    local item loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
    if loc_item01!=null and Func0378(Func0380(loc_item01))==false and GetWidgetLife(loc_item01)>0 and Func0384(loc_item01)==false then
        call SetItemDroppable(loc_item01,true)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_item01=null
    return false
endfunction

// 17989 ~ 18010
function Func0676 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(98)))
    local item loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if(loc_unit01!=null and GetUnitTypeId(loc_unit01)>1 and IsUnitType(loc_unit01,UNIT_TYPE_DEAD)==false)and(loc_item01!=null and GetWidgetLife(loc_item01)>0)then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SetItemDroppable(loc_item01,false)
        call SaveInteger(hashtable001,(loc_integer01),(98),(loc_integer02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0675))
    endif
    set loc_item01=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 18012 ~ 18043
function Func0677 takes nothing returns nothing
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer02
    local item loc_item01
    if GetIssuedOrderId()==852008 then
        set loc_integer01=0
    elseif GetIssuedOrderId()==852009 then
        set loc_integer01=1
    elseif GetIssuedOrderId()==852010 then
        set loc_integer01=2
    elseif GetIssuedOrderId()==852011 then
        set loc_integer01=3
    elseif GetIssuedOrderId()==852012 then
        set loc_integer01=4
    elseif GetIssuedOrderId()==852013 then
        set loc_integer01=5
    endif
    set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
    if loc_item01!=null and GetWidgetLife(loc_item01)>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call SaveInteger(hashtable001,(loc_integer02),(98),(loc_integer01))
        call SaveUnitHandle(hashtable001,(loc_integer02),(26),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0676))
    endif
    set loc_item01=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 18045 ~ 18050
function Func0678 takes nothing returns boolean
    if GetIssuedOrderId()==852008 or GetIssuedOrderId()==852009 or GetIssuedOrderId()==852010 or GetIssuedOrderId()==852011 or GetIssuedOrderId()==852012 or GetIssuedOrderId()==852013 then
        call Func0677()
    endif
    return false
endfunction
