
// 22541 ~ 22558
function Func0905 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(745)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or(TimerGetElapsed(timer001))>loc_real01 then
        call UnitRemoveAbility(loc_unit01,'B0FU')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitAbilityLevel(loc_unit01,'B0FU')==0 then
        call IssueTargetOrder(loc_unit02,"curse",loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 22560 ~ 22591
function Func0906 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local real loc_real01=real208
    local trigger loc_trigger01
    local integer loc_integer01
    if Func0098(loc_unit02)==false then
        call Func0193(loc_unit03,'A2JM')
        call IssueTargetOrder(loc_unit03,"curse",loc_unit02)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2EC',false)
        call Func0246(loc_unit02,'A2EC',1,loc_real01,'B0F5')
    else
        call Func0193(loc_unit03,'A2JM')
        call SetUnitAbilityLevel(loc_unit03,'A2JM',2)
        call IssueTargetOrder(loc_unit03,"curse",loc_unit02)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2EC',false)
        call Func0246(loc_unit02,'A2EC',1,loc_real01,'B0F5')
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0905))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(745),(((TimerGetElapsed(timer001))+loc_real01)*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 22593 ~ 22602
function Func0907 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A2K3')
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 22604 ~ 22608
function Func0908 takes nothing returns nothing
    if GetSpellAbilityId()=='A2EA' and Func0028(GetSpellTargetUnit())==false then
        call Func0907()
    endif
endfunction

// 22610 ~ 22616
function Func0909 takes unit loc_unit01 returns nothing
    if IsUnitIllusion(loc_unit01)or integers112[GetPlayerId(GetOwningPlayer(loc_unit01))]<=0 or(IsUnitType(loc_unit01,UNIT_TYPE_HERO)==false and Func0262(loc_unit01)==false)then
        return
    elseif Func0379(loc_unit01,integers089[integer135])==true or Func0379(loc_unit01,integers089[integer136])==true then
        call Func0707(loc_unit01)
    endif
endfunction

// 22618 ~ 22622
function Func0910 takes nothing returns boolean
    call Func0909(GetAttacker())
    call Func0909(GetTriggerUnit())
    return false
endfunction
