
// 15975 ~ 15981
function Func0617 takes nothing returns nothing
    local item loc_item01=GetEnumItem()
    if GetWidgetLife(loc_item01)>0 and GetItemPlayer(loc_item01)==player012 and IsItemVisible(loc_item01)==true then
        call UnitAddItem(unit245,loc_item01)
    endif
    set loc_item01=null
endfunction

// 15983 ~ 16020
function Func0618 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(92)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local rect loc_rect01=Rect(loc_real01-300,loc_real02-300,loc_real01+300,loc_real02+300)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set player012=loc_player01
        set unit244=loc_unit01
        set unit245=loc_unit02
        call EnumItemsInRect(loc_rect01,Condition(function Func0011),function Func0617)
    else
        if GetTriggerEvalCount(loc_trigger01)>9 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            set player012=loc_player01
            set unit244=loc_unit01
            set unit245=loc_unit02
            call EnumItemsInRect(loc_rect01,Condition(function Func0011),function Func0617)
        else
            set player012=loc_player01
            set unit244=loc_unit01
            set integer389=0
            call EnumItemsInRect(loc_rect01,Condition(function Func0011),function Func0616)
        endif
    endif
    call RemoveRect(loc_rect01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_rect01=null
    return false
endfunction

// 16022 ~ 16056
function Func0619 takes unit loc_unit01,unit loc_unit02 returns nothing
    local player loc_player01=GetOwningPlayer(loc_unit02)
    local integer loc_integer01
    local item loc_item01
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local integer loc_integer03
    if IsTerrainPathable(loc_real01,loc_real02,PATHING_TYPE_WALKABILITY)then
        set loc_real01=GetUnitX(loc_unit02)
        set loc_real02=GetUnitY(loc_unit02)
    endif
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0618))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(92),(loc_unit01))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(loc_player01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    set loc_integer01=0
    loop
        exitwhen loc_integer01>5
        set loc_item01=UnitItemInSlot(loc_unit01,loc_integer01)
        set loc_integer03=Func0380(loc_item01)
        if loc_item01!=null and GetItemPlayer(loc_item01)==loc_player01 and Func0384(loc_item01)==false and(loc_integer03!=integer119 and loc_integer03!=integer120 and loc_integer03!=integer121 and loc_integer03!=integer122 and loc_integer03!=integer123)then
            call UnitRemoveItem(loc_unit01,loc_item01)
            call SetItemPosition(loc_item01,loc_real01,loc_real02)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_trigger01=null
    set loc_item01=null
endfunction
