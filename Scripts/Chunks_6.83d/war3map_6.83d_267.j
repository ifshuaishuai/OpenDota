
// 46194 ~ 46203
function Func1871 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(unit124),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    if GetUnitAbilityLevel(unit124,'A03R')>0 then
        call Func0193(loc_unit01,'A10T')
    else
        call Func0193(loc_unit01,'A2S6')
    endif
    call IssueTargetOrder(loc_unit01,"slow",GetEnumUnit())
    set loc_unit01=null
endfunction

// 46205 ~ 46243
function Func1872 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=ModuloInteger(GetTriggerEvalCount(loc_trigger01),4)+1
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),860,Condition(function Func0305))
    call ForGroup(loc_group01,function Func1871)
    call Func0029(loc_group01)
    if loc_integer03==1 then
        set loc_real01=GetRandomReal(0,90)
    elseif loc_integer03==2 then
        set loc_real01=GetRandomReal(90,180)
    elseif loc_integer03==3 then
        set loc_real01=GetRandomReal(180,270)
    else
        set loc_real01=GetRandomReal(270,360)
    endif
    set loc_real02=GetRandomReal(140,860)
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()=='A03R' or GetSpellAbilityId()=='A0AV')then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call StopSound(sound003,false,true)
    else
        set loc_real03=GetUnitX(loc_unit01)+loc_real02*Cos(loc_real01*bj_DEGTORAD)
        set loc_real04=GetUnitY(loc_unit01)+loc_real02*Sin(loc_real01*bj_DEGTORAD)
        call DestroyEffect(AddSpecialEffect("effects\\SnowyBlizzardTarget.mdx",loc_real03,loc_real04))
        call Func1870(loc_unit01,loc_real03,loc_real04,loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 46245 ~ 46263
function Func1873 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    call Func0184(sound003,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    if GetSpellAbilityId()=='A03R' then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A03R')
    else
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0AV')+1
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.10,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1872))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 46265 ~ 46270
function Func1874 takes nothing returns boolean
    if GetSpellAbilityId()=='A03R' or GetSpellAbilityId()=='A0AV' then
        call Func1873()
    endif
    return false
endfunction

// 46272 ~ 46278
function Func1875 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1874))
    call Func0132('A03X')
    set loc_trigger01=null
endfunction
