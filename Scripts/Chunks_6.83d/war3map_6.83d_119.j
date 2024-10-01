
// 23210 ~ 23225
function Func0948 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'A308')
    call UnitRemoveAbility(loc_unit02,'A309')
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 23227 ~ 23258
function Func0949 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,7,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0947))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetSpellTargetUnit(),"chest")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetTriggerUnit(),"chest")))
        call UnitAddAbility(GetTriggerUnit(),'A308')
        call UnitAddAbility(GetSpellTargetUnit(),'A308')
        call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'A308')
        call UnitMakeAbilityPermanent(GetSpellTargetUnit(),true,'A308')
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,7,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0948))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetSpellTargetUnit(),"chest")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetTriggerUnit(),"chest")))
        call UnitAddAbility(GetTriggerUnit(),'A308')
        call UnitAddAbility(GetSpellTargetUnit(),'A309')
        call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'A308')
        call UnitMakeAbilityPermanent(GetSpellTargetUnit(),true,'A309')
    endif
    set loc_trigger01=null
endfunction

// 23260 ~ 23264
function Func0950 takes nothing returns nothing
    if GetSpellAbilityId()=='A1ZI' then
        call Func0949()
    endif
endfunction
