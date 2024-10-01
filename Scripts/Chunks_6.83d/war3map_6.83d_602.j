
// 68732 ~ 68749
function Func3228 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0444(loc_unit01,loc_real01,loc_real02,650)
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 68751 ~ 68779
function Func3229 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosDone.mdl",loc_unit01,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",loc_unit01,"origin"))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,18-0.1,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3227))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.005,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3228))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 68781 ~ 68796
function Func3230 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',0,0,0)
    local real loc_real01=18
    call Func0193(loc_unit02,'A0ZC')
    call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real01)
    call Func0239(loc_unit01,loc_real01,175)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3229))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 68798 ~ 68803
function Func3231 takes nothing returns boolean
    if GetSpellAbilityId()=='A093' and GetUnitTypeId(GetTriggerUnit())=='U008' then
        call Func3230()
    endif
    return false
endfunction

// 68805 ~ 68810
function Func3232 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3231))
    set loc_trigger01=null
endfunction
