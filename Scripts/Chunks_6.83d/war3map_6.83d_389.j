
// 53776 ~ 53793
function Func2358 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetUnitAbilityLevel(loc_unit02,'A2NU')==0 or GetTriggerEvalCount(loc_trigger01)>250 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
    else
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 53795 ~ 53820
function Func2359 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o019',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2357))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call Func0193(loc_unit02,'A2NU')
    call UnitMakeAbilityPermanent(loc_unit02,true,'A2NV')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2NU',false)
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\LastWordDebuff_6.mdx",loc_unit02,"overhead")))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2358))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 53822 ~ 53827
function Func2360 takes nothing returns boolean
    if GetSpellAbilityId()=='A2NT' and Func0028(GetSpellTargetUnit())==false then
        call Func2359()
    endif
    return false
endfunction
