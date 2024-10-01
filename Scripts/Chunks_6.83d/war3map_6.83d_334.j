
// 50299 ~ 50311
function Func2145 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(242)))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl",loc_unit01,"origin"))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 50313 ~ 50325
function Func2146 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(242),((75*GetUnitAbilityLevel(loc_unit01,'A112'))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2145))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 50327 ~ 50332
function Func2147 takes nothing returns boolean
    if GetSpellAbilityId()=='A112' then
        call Func2146()
    endif
    return false
endfunction

// 50334 ~ 50339
function Func2148 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2147))
    set loc_trigger01=null
endfunction
