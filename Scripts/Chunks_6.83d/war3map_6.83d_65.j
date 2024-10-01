
// 19673 ~ 19701
function Func0762 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(98)))
    local item loc_item01=UnitItemInSlot(loc_unit01,loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(105)))
    local item loc_item02
    local integer loc_integer04
    if loc_item01!=null and Func0378(Func0380(loc_item01))and GetHandleId(loc_item01)==loc_integer03 and Func0194(loc_unit01)==false and Func0194(loc_unit01)==false then
        set loc_item02=CreateItem((LoadInteger(hashtable001,(GetHandleId(loc_item01)),(GetHandleId(loc_unit01)))),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call FlushChildHashtable(hashtable001,(GetHandleId(loc_item01)))
        set loc_integer04=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer118],loc_integer04)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitAddItem(loc_unit01,loc_item02)
        call UnitRemoveAbility(loc_unit01,'B0GI')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_item01=null
    set loc_item02=null
    return false
endfunction

// 19703 ~ 19713
function Func0763 takes unit loc_unit01,item loc_item01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=Func0232(loc_unit01,loc_item01)
    call SaveInteger(hashtable001,(loc_integer01),(98),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(105),(GetHandleId(loc_item01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,120,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0762))
    set loc_trigger01=null
endfunction

// 19715 ~ 19798
function Func0764 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local item loc_item01=GetManipulatedItem()
    local integer loc_integer01=Func0380(loc_item01)
    local unit loc_unit02
    local integer loc_integer02
    local boolean loc_boolean01
    local integer loc_integer03
    local item loc_item02
    local integer loc_integer04
    if loc_integer01==integer115 then
        set loc_integer03=Func0232(loc_unit01,loc_item01)
        set loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(103)))
        set loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(104)))
        if GetUnitTypeId(loc_unit02)=='nfoh' or GetUnitTypeId(loc_unit02)=='ndfl' then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit01,"overhead"))
            call Func0118(GetOwningPlayer(loc_unit01),"Abilities\\Spells\\Human\\Heal\\HealTarget.wav")
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer118],loc_integer03)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call UnitRemoveAbility(loc_unit01,'B0GI')
        elseif Func0607(loc_integer02)then
            set loc_integer04=Func0760(loc_integer02)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl",loc_unit01,"overhead"))
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            call DisableTrigger(trigger057)
            if GetOwningPlayer(loc_unit01)==player005 then
                set item002=Func0410(loc_unit01,integers089[loc_integer04],loc_integer03)
            else
                set item002=Func0410(loc_unit01,integers091[loc_integer04],loc_integer03)
            endif
            call EnableTrigger(trigger057)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            set loc_item02=UnitItemInSlot(loc_unit01,loc_integer03)
            call SaveInteger(hashtable001,(GetHandleId(loc_item02)),(GetHandleId(loc_unit01)),(loc_integer02))
            call Func0763(loc_unit01,loc_item02)
            call UnitRemoveAbility(loc_unit01,'B0GI')
        endif
    elseif loc_integer01==integer118 then
        set loc_integer03=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer117],loc_integer03)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer117 then
        set loc_integer03=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer116],loc_integer03)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
    elseif loc_integer01==integer116 then
        set loc_integer03=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(loc_item01)
        call Func0392(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer115],loc_integer03)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,0)
    elseif Func0378(loc_integer01)then
        if(LoadInteger(hashtable001,(GetHandleId(loc_item01)),(GetHandleId(loc_unit01))))>0 then
            set boolean068=true
            set loc_integer03=Func0232(loc_unit01,loc_item01)
            set loc_item02=CreateItem((LoadInteger(hashtable001,(GetHandleId(loc_item01)),(GetHandleId(loc_unit01)))),GetUnitX(loc_unit01),GetUnitY(loc_unit01))
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_item01)))
            set player005=GetItemPlayer(loc_item01)
            call Func0392(loc_item01)
            set item002=Func0410(loc_unit01,integers089[integer118],loc_integer03)
            call SetItemPlayer(item002,player005,false)
            call SetItemUserData(item002,1)
            call UnitAddItem(loc_unit01,loc_item02)
            set boolean068=false
            call UnitRemoveAbility(loc_unit01,'B0GI')
        endif
    endif
    set loc_unit01=null
    set loc_item01=null
    set loc_unit02=null
    set loc_item02=null
endfunction
