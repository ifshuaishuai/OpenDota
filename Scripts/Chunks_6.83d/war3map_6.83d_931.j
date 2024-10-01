
// 94440 ~ 94467
function Func4577 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetOwningPlayer(GetEventDamageSource())==GetOwningPlayer(loc_unit01)or GetOwningPlayer(GetEventDamageSource())==GetOwningPlayer(loc_unit02)then
            call DisableTrigger(loc_trigger01)
            call Func0115(loc_unit01,loc_unit02,3,GetEventDamage()*(0.6+0.1*loc_integer02))
            call Func0145(loc_unit01,GetEventDamage()*(0.6+0.1*loc_integer02))
            call EnableTrigger(loc_trigger01)
        endif
    endif
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or Func0194(loc_unit02)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit02,'A2SH')
        call UnitRemoveAbility(loc_unit02,'B0GQ')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 94469 ~ 94489
function Func4578 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2SI')
    call Func0193(loc_unit02,'A2SH')
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,3.5+0.5*loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4577))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",loc_unit02,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",loc_unit02,"hand,left")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget("effects\\PoisonHands.mdx",loc_unit02,"hand,right")))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 94491 ~ 94496
function Func4579 takes nothing returns boolean
    if GetSpellAbilityId()=='A2SI' then
        call Func4578()
    endif
    return false
endfunction

// 94498 ~ 94503
function Func4580 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4579))
    set loc_trigger01=null
endfunction
