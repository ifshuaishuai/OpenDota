
// 60023 ~ 60038
function Func2744 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    if GetTriggerEvalCount(loc_trigger01)>80 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 60040 ~ 60058
function Func2745 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e02C',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0193(loc_unit03,'A1FM')
    call SetUnitAbilityLevel(loc_unit03,'A1FM',GetUnitAbilityLevel(loc_unit01,'A020'))
    call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)
    call UnitApplyTimedLife(loc_unit03,'BTLF',10)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2744))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 60060 ~ 60065
function Func2746 takes nothing returns boolean
    if GetSpellAbilityId()=='A020' and Func0028(GetSpellTargetUnit())==false then
        call Func2745()
    endif
    return false
endfunction

// 60067 ~ 60072
function Func2747 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func2746))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    set loc_trigger01=null
endfunction
