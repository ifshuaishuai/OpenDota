
// 44895 ~ 44905
function Func1801 takes nothing returns nothing
    local integer loc_integer01
    if Func0098(GetEnumUnit())==false and((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4332))))==1)==false then
        call Func0044(GetEnumUnit(),4332,3.75)
        set loc_integer01=integer463
        call Func0115(unit273,GetEnumUnit(),1,(loc_integer01)*GetHeroStr(unit272,true))
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A2OK',false)
        call Func0193(GetEnumUnit(),'A2OK')
        call Func0246(GetEnumUnit(),'A2OK',1,1.5,'B0GF')
    endif
endfunction

// 44907 ~ 44936
function Func1802 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    if GetTriggerEvalCount(loc_trigger01)>=R2I(20*3.75)or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitPathing(loc_unit01,true)
        call UnitRemoveAbility(loc_unit01,'A2O4')
        call UnitRemoveAbility(loc_unit01,'B0GB')
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit272=loc_unit02
        set unit273=loc_unit01
        set integer463=loc_integer02
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),105+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func1801)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 44938 ~ 44955
function Func1803 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=GetUnitAbilityLevel(unit272,'A2O6')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SetUnitPathing(loc_unit01,false)
    call Func0193(loc_unit01,'A2O4')
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1802))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(unit272))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveEffectHandle(hashtable001,(loc_integer02),(175),(AddSpecialEffectTarget("war3mapImported\\SandBreathDamageSmall.mdx",loc_unit01,"foot, left")))
    call SaveEffectHandle(hashtable001,(loc_integer02),(176),(AddSpecialEffectTarget("war3mapImported\\SandBreathDamageSmall.mdx",loc_unit01,"foot, right")))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 44957 ~ 44973
function Func1804 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=Func0030()
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set unit272=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func0330))
    call ForGroup(loc_group01,function Func1803)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 44975 ~ 44987
function Func1805 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local sound loc_sound01=CreateSound("abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav",false,false,false,10,10,"DefaultEAXON")
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call StartSound(loc_sound01)
    call KillSoundWhenDone(loc_sound01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1804))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_sound01=null
endfunction

// 44989 ~ 44994
function Func1806 takes nothing returns boolean
    if GetSpellAbilityId()=='A2O6' then
        call Func1805()
    endif
    return false
endfunction

// 44996 ~ 45004
function Func1807 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0132('A2O4')
    call Func0132('A0X6')
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1806))
    call CreateSound("abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav",false,false,false,10,10,"DefaultEAXON")
    set loc_trigger01=null
endfunction
