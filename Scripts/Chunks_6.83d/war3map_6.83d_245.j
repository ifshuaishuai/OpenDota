
// 44637 ~ 44641
function Func1775 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetEnumUnit())
    local integer loc_integer02=(LoadInteger(hashtable001,(integer462),(loc_integer01)))
    call SaveInteger(hashtable001,(integer462),(loc_integer01),(loc_integer02-1))
endfunction

// 44643 ~ 44655
function Func1776 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(221)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(317)))
    set integer462=GetHandleId(loc_unit01)
    call ForGroup(loc_group01,function Func1775)
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 44657 ~ 44674
function Func1777 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    if IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false then
        set loc_unit01=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    endif
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),650,Condition(function Func1773))
    set unit002=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    set real002=GetUnitAbilityLevel(loc_unit01,'A0GP')*20
    set integer462=GetHandleId(loc_unit01)
    call ForGroup(loc_group01,function Func1774)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(221),(loc_unit01))
    call SaveGroupHandle(hashtable001,(GetHandleId(loc_trigger01)),(317),(loc_group01))
    call TriggerRegisterTimerEvent(loc_trigger01,14,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1776))
    set loc_trigger01=null
endfunction

// 44676 ~ 44681
function Func1778 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1772))
    call TriggerAddAction(loc_trigger01,function Func1777)
endfunction
