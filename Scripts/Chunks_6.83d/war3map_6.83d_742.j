
// 78478 ~ 78484
function Func3785 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(unit002),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,('A0JE'))
    call SetUnitAbilityLevel(loc_unit02,('A0JE'),integer011)
    call IssueTargetOrder(loc_unit02,"slow",loc_unit01)
endfunction

// 78486 ~ 78493
function Func3786 takes unit loc_unit01,unit loc_unit02 returns nothing
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3784)
    set unit002=loc_unit02
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),675,loc_boolexpr01)
    call ForGroup(loc_group01,function Func3785)
    call Func0029(loc_group01)
endfunction

// 78495 ~ 78518
function Func3787 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035((loc_trigger01))
    elseif GetTriggerEvalCount(loc_trigger01)>32 then
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035((loc_trigger01))
        call Func0123((LoadUnitHandle(hashtable001,(loc_integer01),(14))))
    else
        call SetUnitAnimation(loc_unit02,"birth")
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
        set integer011=GetTriggerExecCount(loc_trigger01)*GetUnitAbilityLevel(loc_unit01,('A06P'))/2
        call Func3786(loc_unit02,loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 78520 ~ 78534
function Func3788 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),('e01G'),loc_real01,loc_real02,0)
    call RemoveLocation(loc_location01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddAction(loc_trigger01,function Func3787)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
endfunction

// 78536 ~ 78542
function Func3789 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddAction(loc_trigger01,function Func3788)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3783))
    call Func0132(('A0JE'))
endfunction
