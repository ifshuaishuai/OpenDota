
// 78676 ~ 78695
function Func3800 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0AS')
    if GetTriggerEvalCount(loc_trigger01)>11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A0P0')
        call UnitRemoveAbility(loc_unit02,'B073')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0155(loc_unit02,loc_integer02*10+5)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 78697 ~ 78718
function Func3801 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))then
        call TriggerAddCondition(loc_trigger01,Condition(function Func3800))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfSanctuary\\Staff_Sanctuary_Target.mdl",loc_unit02,"chest")))
        call Func0193(loc_unit02,'A0P0')
    elseif Func0028(GetSpellTargetUnit())==false then
        call TriggerAddCondition(loc_trigger01,Condition(function Func3799))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\Voodoo\\VoodooAuraTarget.mdl",loc_unit02,"overhead")))
        call Func0193(loc_unit02,'A17K')
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 78720 ~ 78725
function Func3802 takes nothing returns boolean
    if GetSpellAbilityId()=='A0AS' then
        call Func3801()
    endif
    return false
endfunction

// 78727 ~ 78734
function Func3803 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3802))
    call Func0132('A0P0')
    call Func0132('A17K')
    set loc_trigger01=null
endfunction
