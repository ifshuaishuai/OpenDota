
// 16170 ~ 16182
function Func0624 takes nothing returns nothing
    local item loc_item01=GetEnumItem()
    local unit loc_unit01=unit247
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01=GetPlayerId(loc_player01)
    if GetWidgetLife(loc_item01)>0 and GetItemPlayer(loc_item01)==loc_player01 and IsItemVisible(loc_item01)==true then
        call SetItemPosition(loc_item01,reals005[loc_integer01],reals006[loc_integer01])
        call UnitAddItem(unit246,loc_item01)
    endif
    set loc_item01=null
    set loc_unit01=null
    set loc_player01=null
endfunction

// 16184 ~ 16204
function Func0625 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    set unit247=loc_unit01
    set unit246=loc_unit02
    if Func0056(GetOwningPlayer(unit247))then
        call EnumItemsInRect(rect044,Condition(function Func0011),function Func0624)
    else
        call EnumItemsInRect(rect045,Condition(function Func0011),function Func0624)
    endif
    if GetTriggerEvalCount(loc_trigger01)==3 then
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 16206 ~ 16243
function Func0626 takes unit loc_unit01 returns nothing
    local unit loc_unit02=GetSoldUnit()
    local integer loc_integer01=0
    local item loc_item01
    local integer loc_integer02=GetPlayerId(GetOwningPlayer(loc_unit02))
    local region loc_region01=CreateRegion()
    local trigger loc_trigger01
    local integer loc_integer03
    local unit loc_unit03=GetSellingUnit()
    if Func0056(GetOwningPlayer(loc_unit02))then
        call RegionAddRect(loc_region01,rect044)
    else
        call RegionAddRect(loc_region01,rect045)
    endif
    if IsUnitInRegion(loc_region01,loc_unit03)then
        set loc_trigger01=CreateTrigger()
        set loc_integer03=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0625))
        call SaveUnitHandle(hashtable001,(loc_integer03),(53),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit03))
        loop
            exitwhen loc_integer01>5
            set loc_item01=UnitItemInSlot(loc_unit03,loc_integer01)
            if Func0378(Func0380(loc_item01))==false and Func0380(loc_item01)!=integer198 and Func0384(loc_item01)==false then
                call UnitRemoveItemFromSlot(loc_unit03,loc_integer01)
                if IsUnitInRegion(loc_region01,loc_unit03)and IsPlayerAlly(GetItemPlayer(loc_item01),GetOwningPlayer(loc_unit03))==true then
                    set loc_integer02=GetPlayerId(GetItemPlayer(loc_item01))
                    call SetItemPosition(loc_item01,reals005[loc_integer02],reals006[loc_integer02])
                endif
            endif
            set loc_integer01=loc_integer01+1
        endloop
    endif
    call RemoveRegion(loc_region01)
    set loc_unit02=null
    set loc_region01=null
endfunction
