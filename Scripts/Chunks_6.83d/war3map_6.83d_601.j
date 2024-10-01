
// 68680 ~ 68686
function Func3224 takes nothing returns boolean
    if(GetSpellAbilityId()=='A095' or GetSpellAbilityId()=='A09W')and Func0098(GetSpellTargetUnit())then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0LR'))
    endif
    return false
endfunction

// 68688 ~ 68693
function Func3225 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3224))
    set loc_trigger01=null
endfunction

// 68695 ~ 68706
function Func3226 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosDone.mdl",loc_unit01,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",loc_unit01,"origin"))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 68708 ~ 68730
function Func3227 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call KillUnit(loc_unit02)
    endif
    call UnitRemoveAbility(loc_unit01,'A0ZC')
    call UnitRemoveAbility(loc_unit01,'B00V')
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3226))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
