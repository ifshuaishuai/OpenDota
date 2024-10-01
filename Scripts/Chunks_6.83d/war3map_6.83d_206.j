
// 41646 ~ 41652
function Func1616 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetOwningPlayer(GetFilterUnit())!=GetOwningPlayer(unit124)then
        call SetUnitOwner(GetFilterUnit(),GetOwningPlayer(unit124),true)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",GetFilterUnit(),"origin"))
    endif
    return false
endfunction

// 41654 ~ 41678
function Func1617 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local item loc_item01=(LoadItemHandle(hashtable001,(loc_integer01),(96)))
    local group loc_group01
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    if GetTriggerEventId()==EVENT_UNIT_DROP_ITEM and GetManipulatedItem()==loc_item01 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_DROP_ITEM then
        if Func0194(loc_unit01)==false then
            set loc_group01=Func0030()
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func1616))
            call Func0029(loc_group01)
            set loc_group01=null
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    return false
endfunction

// 41680 ~ 41691
function Func1618 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DROP_ITEM)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1617))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveItemHandle(hashtable001,(loc_integer01),(96),(GetManipulatedItem()))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 41693 ~ 41698
function Func1619 takes nothing returns boolean
    if GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and Func0399(GetManipulatedItem())==integer263 then
        call Func1618()
    endif
    return false
endfunction
