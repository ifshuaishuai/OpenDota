
// 21444 ~ 21453
function Func0834 takes nothing returns nothing
    local unit loc_unit01
    if integer419>0 then
        set integer419=integer419-1
        set loc_unit01=CreateUnit(GetOwningPlayer(unit250),'e00E',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
        call UnitAddAbility(loc_unit01,'A0K6')
        call IssueTargetOrder(loc_unit01,"forkedlightning",GetEnumUnit())
    endif
    set loc_unit01=null
endfunction

// 21455 ~ 21487
function Func0835 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    local unit loc_unit02
    local group loc_group01
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0044(GetTriggerUnit(),4257,1)
        set loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
        set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),0)
        call UnitAddAbility(loc_unit01,'A0K6')
        set unit250=loc_unit02
        set unit124=loc_unit02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),925,Condition(function Func0305))
        set integer419=5
        if Func0147(GetTriggerUnit(),GetEventDamageSource())<900 then
            set integer419=integer419-1
            call IssueTargetOrder(loc_unit01,"forkedlightning",GetEventDamageSource())
        endif
        call GroupRemoveUnit(loc_group01,GetEventDamageSource())
        call ForGroup(loc_group01,function Func0834)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 21489 ~ 21494
function Func0836 takes nothing returns boolean
    if(GetTriggerEventId()==EVENT_UNIT_DAMAGED and Func0833(GetEventDamageSource(),GetEventDamage())and GetRandomInt(1,100)<21 and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4257))))==1)==false)or GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call Func0835()
    endif
    return false
endfunction

// 21496 ~ 21513
function Func0837 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if loc_unit02==null then
        set loc_unit02=loc_unit01
    endif
    call Func0044(loc_unit02,4279,15)
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0836))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl",loc_unit02,"origin")))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 21515 ~ 21519
function Func0838 takes nothing returns nothing
    if GetSpellAbilityId()=='A0JL' and((LoadInteger(hashtable001,(GetHandleId((GetSpellTargetUnit()))),((4279))))==1)==false then
        call Func0837()
    endif
endfunction
