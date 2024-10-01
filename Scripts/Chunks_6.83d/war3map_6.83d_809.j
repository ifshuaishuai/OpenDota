
// 84475 ~ 84486
function Func4066 takes nothing returns nothing
    local unit loc_unit01
    if boolean154 then
        set loc_unit01=CreateUnit(GetOwningPlayer(GetEnumUnit()),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
        call UnitRemoveAbility(GetEnumUnit(),'B0H3')
        call Func0193(loc_unit01,'A2VF')
        call IssueTargetOrder(loc_unit01,"doom",GetEnumUnit())
        set loc_unit01=null
    endif
    call Func0115(unit389,GetEnumUnit(),1,real387)
    call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\Purge_NoBirth.mdx",GetEnumUnit(),"origin"))
endfunction

// 84488 ~ 84529
function Func4067 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(15)))
    local group loc_group01
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer04=20
    if loc_boolean01 then
        set loc_integer04=28
    endif
    if loc_integer03>loc_integer04 then
        call StopSound(sound060,false,true)
        call KillUnit(loc_unit02)
        call ShowUnit(loc_unit02,false)
        call KillUnit(loc_unit03)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit389=loc_unit01
        set real387=0.25*(150+50*loc_integer02)*(loc_integer03/I2R(loc_integer04))
        set boolean153=false
        set boolean154=loc_boolean01
        if ModuloInteger(loc_integer03,4)==0 then
            set boolean153=true
        endif
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),475,Condition(function Func0318))
        call ForGroup(loc_group01,function Func4066)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 84531 ~ 84569
function Func4068 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0CK',loc_real01,loc_real02,0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1U6')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2V8')
        set loc_boolean01=true
    endif
    call SetSoundVolume(sound060,200)
    call StartSound(sound060)
    call SetSoundPosition(sound060,loc_real01,loc_real02,100)
    if Func0057(GetOwningPlayer(loc_unit01))then
        call Func0193(loc_unit03,'A1U5')
        if loc_boolean01 then
            call SetUnitAbilityLevel(loc_unit03,'A1U5',2)
        endif
    else
        call Func0193(loc_unit03,'A1U4')
        if loc_boolean01 then
            call SetUnitAbilityLevel(loc_unit03,'A1U4',2)
        endif
    endif
    call IssuePointOrder(loc_unit03,"cloudoffog",loc_real01,loc_real02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveBoolean(hashtable001,(loc_integer01),(15),(loc_boolean01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4067))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 84571 ~ 84576
function Func4069 takes nothing returns boolean
    if GetSpellAbilityId()=='A1U6' or GetSpellAbilityId()=='A2V8' then
        call Func4068()
    endif
    return false
endfunction

// 84578 ~ 84583
function Func4070 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4069))
    set loc_trigger01=null
endfunction
