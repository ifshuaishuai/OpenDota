
// 66741 ~ 66784
function Func3123 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2S0')
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(797)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(798)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4338)),(2))
        call Func0193(loc_unit01,'A2RZ')
        call SetUnitAbilityLevel(loc_unit01,'A2RZ',loc_integer02)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif loc_real01>0 then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4338)),(2))
        if GetUnitTypeId(loc_unit01)=='NC00' then
            call Func0193(loc_unit01,'A2RZ')
            call SetUnitAbilityLevel(loc_unit01,'A2RZ',loc_integer02)
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if Func0194(loc_unit01)==false then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(1,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real01))
        endif
        if Func0194(loc_unit02)==false then
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
        endif
    else
        set loc_real01=GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)*0.2
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,Func0142(1,GetUnitState(loc_unit02,UNIT_STATE_LIFE)-loc_real01))
        call SaveReal(hashtable001,(loc_integer01),(797),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(798),((loc_real02)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 66786 ~ 66806
function Func3124 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerRegisterTimerEvent(loc_trigger01,7,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3123))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(797),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(798),((0)*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\MortalStrikeCaster.mdx",loc_unit01,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\MortalStrikeTarget.mdx",loc_unit02,"overhead")))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4338)),(1))
    call UnitRemoveAbility(loc_unit01,'A2RZ')
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction
