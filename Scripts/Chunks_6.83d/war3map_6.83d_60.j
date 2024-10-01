
// 19326 ~ 19338
function Func0744 takes nothing returns nothing
    local unit loc_unit01=unit248
    local unit loc_unit02=GetEnumUnit()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4341))))==1)==false then
        call Func0044(loc_unit02,4341,0.99)
        set boolean069=true
        call Func0115(loc_unit01,loc_unit02,1,50)
        set boolean069=false
        call Func0161("Abilities\\Spells\\Items\\HealingSalve\\HealingSalveTarget.mdl",loc_unit02,"origin",0.9)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 19340 ~ 19364
function Func0745 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local item loc_item01=(LoadItemHandle(hashtable001,(loc_integer01),(96)))
    local group loc_group01
    if loc_unit01==null or(GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==loc_item01)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
        if Func0194(loc_unit01)==false then
            set loc_group01=Func0030()
            set unit124=loc_unit01
            set unit248=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),725,Condition(function Func0305))
            call ForGroup(loc_group01,function Func0744)
            call Func0029(loc_group01)
            set loc_group01=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction

// 19366 ~ 19375
function Func0746 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DROP_ITEM)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0745))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveItemHandle(hashtable001,(loc_integer01),(96),(GetManipulatedItem()))
    set loc_trigger01=null
endfunction

// 19377 ~ 19385
function Func0747 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM and GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and Func0399(GetManipulatedItem())==integer217 then
        call Func0746(GetTriggerUnit())
    endif
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SUMMON and UnitInventorySize(GetSummonedUnit())>0 and Func0394(GetSummonedUnit(),integers089[integer217])!=null then
        call Func0746(GetSummonedUnit())
    endif
    return false
endfunction
