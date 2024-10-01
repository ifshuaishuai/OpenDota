
// 21858 ~ 21878
function Func0859 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if Func0101(GetEventDamage())and IsUnitAlly(GetEventDamageSource(),GetOwningPlayer(GetTriggerUnit()))==false and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false and boolean072==false then
            if GetUnitAbilityLevel(GetEventDamageSource(),'A04R')==0 then
                call DisableTrigger(loc_trigger01)
                set boolean072=true
                call Func0115(GetTriggerUnit(),GetEventDamageSource(),3,GetEventDamage())
                set boolean072=false
                call EnableTrigger(loc_trigger01)
            endif
        endif
    endif
    set loc_trigger01=null
    return false
endfunction

// 21880 ~ 21890
function Func0860 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,4.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0859))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpikeBarrier\\SpikeBarrier.mdl",loc_unit01,"chest")))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 21892 ~ 21896
function Func0861 takes nothing returns nothing
    if GetSpellAbilityId()=='A15W' then
        call Func0860()
    endif
endfunction
