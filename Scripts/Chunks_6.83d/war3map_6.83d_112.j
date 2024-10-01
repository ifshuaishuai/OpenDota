
// 22917 ~ 22940
function Func0927 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local item loc_item01=Func0394(loc_unit01,integers089[integer225])
    local integer loc_integer02
    if loc_item01!=null and(GetUnitTypeId(loc_unit01)!='N0MM' or Func0194(loc_unit01)==false)then
        call DisableTrigger(trigger057)
        set loc_integer02=Func0232(loc_unit01,loc_item01)
        set player005=GetItemPlayer(loc_item01)
        call RemoveItem(loc_item01)
        set item002=Func0410(loc_unit01,integers089[integer224],loc_integer02)
        call SetItemPlayer(item002,player005,false)
        call SetItemUserData(item002,1)
        call EnableTrigger(trigger057)
    endif
    call UnitRemoveAbility(loc_unit01,'A30Y')
    call UnitRemoveAbility(loc_unit01,'B0HL')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 22942 ~ 22954
function Func0928 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0927))
    call TriggerRegisterTimerEvent(loc_trigger01,8,false)
    call Func0193(loc_unit01,'A30Y')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A30Y',false)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 22956 ~ 22960
function Func0929 takes nothing returns nothing
    if GetSpellAbilityId()=='A31F' then
        call Func0928()
    endif
endfunction
