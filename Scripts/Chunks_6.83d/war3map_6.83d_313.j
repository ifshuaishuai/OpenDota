
// 48650 ~ 48676
function Func2050 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0QR')
    local real loc_real01
    local real loc_real02=0.35
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1B3')
        set loc_real02=0.65
    endif
    call Func0193(loc_unit03,'A0QU')
    call SetUnitAbilityLevel(loc_unit03,'A0QU',loc_integer01)
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
    if loc_integer01==1 then
        set loc_real01=0.35
    elseif loc_integer01==2 then
        set loc_real01=0.35
    else
        set loc_real01=0.35
    endif
    call Func0115(loc_unit01,loc_unit01,1,GetUnitState(loc_unit01,UNIT_STATE_LIFE)*loc_real01)
    call Func0115(loc_unit01,loc_unit02,1,GetUnitState(loc_unit02,UNIT_STATE_LIFE)*loc_real02)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit01,"chest"))
    call DestroyEffect(AddSpecialEffectTarget("effects\\LifeBreak.mdx",loc_unit02,"chest"))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 48678 ~ 48732
function Func2051 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(23)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(24)))
    local real loc_real03
    local real loc_real04
    local real loc_real05=GetUnitX(loc_unit01)
    local real loc_real06=GetUnitY(loc_unit01)
    local real loc_real07=GetUnitX(loc_unit02)
    local real loc_real08=GetUnitY(loc_unit02)
    local real loc_real09=Atan2(loc_real08-loc_real06,loc_real07-loc_real05)
    if GetUnitTypeId(loc_unit01)=='E02X' then
        call SetUnitAnimationByIndex(loc_unit01,1)
    else
        call SetUnitAnimationByIndex(loc_unit01,17)
    endif
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or Func0149(loc_real01,loc_real02,loc_real07,loc_real08)>1400 or Func0270(loc_unit01)then
        call SetUnitPathing(loc_unit01,true)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call UnitRemoveAbility(loc_unit01,'A0ST')
        call SetUnitTimeScale(loc_unit01,1.0)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif Func0149(loc_real05,loc_real06,loc_real07,loc_real08)<125 then
        call SetUnitPathing(loc_unit01,true)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call UnitRemoveAbility(loc_unit01,'A0ST')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitTimeScale(loc_unit01,1.0)
        if loc_unit02!=null and Func0194(loc_unit02)==false then
            call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
            call Func2050(loc_unit01,loc_unit02)
        endif
    else
        call SetUnitPathing(loc_unit01,false)
        set loc_real01=loc_real07
        set loc_real02=loc_real08
        call SaveReal(hashtable001,(loc_integer01),(23),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(24),((loc_real02)*1.0))
        set loc_real03=loc_real05+15*Cos(loc_real09)
        set loc_real04=loc_real06+15*Sin(loc_real09)
        call SetUnitPosition(loc_unit01,loc_real03,loc_real04)
        call SetUnitFacing(loc_unit01,loc_real09*bj_RADTODEG)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 48734 ~ 48756
function Func2052 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.015,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2051))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(23),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(24),((GetUnitY(loc_unit02))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\LifeBreakCharge.mdx",loc_unit01,"hand right alternate")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\LifeBreakCharge.mdx",loc_unit01,"hand left alternate")))
    call SetUnitPathing(loc_unit01,false)
    call Func0193(loc_unit01,'A0ST')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0ST',false)
    call SetUnitAnimationByIndex(loc_unit01,17)
    call SetUnitTimeScale(loc_unit01,3.0)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 48758 ~ 48763
function Func2053 takes nothing returns boolean
    if(GetSpellAbilityId()=='A0QR' or GetSpellAbilityId()=='A1B3')and Func0028(GetSpellTargetUnit())==false then
        call Func2052()
    endif
    return false
endfunction

// 48765 ~ 48771
function Func2054 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2053))
    set loc_trigger01=null
    call Func0132('A0QU')
endfunction
