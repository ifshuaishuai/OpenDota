
// 47193 ~ 47200
function Func1942 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetEnumUnit()),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    call Func0193(loc_unit01,'A0SJ')
    call SetUnitAbilityLevel(loc_unit01,'A0SJ',integer022)
    call IssueTargetOrder(loc_unit01,"thunderbolt",GetEnumUnit())
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,real009)
    set loc_unit01=null
endfunction

// 47202 ~ 47243
function Func1943 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local location loc_location01=GetSpellTargetLoc()
    local integer loc_integer01=1
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local real loc_real07
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    if loc_unit02==null then
        set loc_real03=GetLocationX(loc_location01)
        set loc_real04=GetLocationY(loc_location01)
    else
        set loc_real03=GetUnitX(loc_unit02)
        set loc_real04=GetUnitY(loc_unit02)
    endif
    set loc_real07=bj_DEGTORAD*Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    call RemoveLocation(loc_location01)
    loop
        exitwhen loc_integer01>24
        set loc_real05=Func0126(loc_real01+loc_integer01*60*Cos(loc_real07))
        set loc_real06=Func0129(loc_real02+loc_integer01*60*Sin(loc_real07))
        call GroupEnumUnitsInRange(loc_group02,loc_real05,loc_real06,250,Condition(function Func0298))
        call GroupAddGroup(loc_group02,loc_group01)
        call GroupClear(loc_group02)
        call Func0213(CreateDestructable('B000',loc_real05,loc_real06,GetRandomReal(0,360),0.5,GetRandomInt(0,2)),8)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Volcano\\VolcanoDeath.mdl",loc_real05,loc_real06))
        set loc_integer01=loc_integer01+1
    endloop
    set integer022=GetUnitAbilityLevel(loc_unit01,'A0SK')
    set real009=integer022*50+75
    call ForGroup(loc_group01,function Func1942)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    set loc_unit01=null
    set loc_location01=null
endfunction

// 47245 ~ 47250
function Func1944 takes nothing returns boolean
    if GetSpellAbilityId()=='A0SK' then
        call Func1943()
    endif
    return false
endfunction

// 47252 ~ 47258
function Func1945 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1944))
    call Func0132('A0SJ')
    set loc_trigger01=null
endfunction
