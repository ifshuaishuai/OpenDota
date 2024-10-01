
// 45282 ~ 45300
function Func1822 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>10 then
            set loc_real01=GetEventDamage()*(0.1+0.04*loc_integer02)
            call DisableTrigger(loc_trigger01)
            call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,loc_real01)
            call EnableTrigger(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 45302 ~ 45316
function Func1823 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A0KM')
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl",loc_unit02,"chest"))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,4+loc_integer02,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1822))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 45318 ~ 45323
function Func1824 takes nothing returns boolean
    if GetSpellAbilityId()=='A0KM' then
        call Func1823()
    endif
    return false
endfunction

// 45325 ~ 45330
function Func1825 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1824))
    set loc_trigger01=null
endfunction
