
// 53674 ~ 53687
function Func2355 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2NT')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0115(loc_unit01,loc_unit02,1,100+50*loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 53689 ~ 53717
function Func2356 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2NT')
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(95)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0193(loc_unit03,'A0LS')
    call SetUnitAbilityLevel(loc_unit03,'A0LS',loc_integer02)
    call IssueTargetOrder(loc_unit03,"soulburn",loc_unit02)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2355))
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(17),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(5),(loc_integer02))
    if loc_boolean01 then
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LastWordDamageSpell.mdx",loc_unit02,"overhead"))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 53719 ~ 53774
function Func2357 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2NT')
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A2NU')
        call UnitRemoveAbility(loc_unit02,'B05V')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A2NU')
        call UnitRemoveAbility(loc_unit02,'B05V')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2356))
        call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(17),(loc_unit02))
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(5),(loc_integer02))
        call SaveBoolean(hashtable001,(loc_integer01),(95),(false))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call Func0193(loc_unit03,'A2NW')
        call SetUnitAbilityLevel(loc_unit03,'A2NW',loc_integer02)
        call IssueTargetOrder(loc_unit03,"drunkenhaze",loc_unit02)
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\LastWordDamageDuration.mdx",loc_unit02,"overhead"))
        set loc_unit03=null
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and Func0469(GetSpellAbilityId())==false and Func0471(GetSpellAbilityId())==false and GetSpellAbilityId()!='AIbk' and GetSpellAbilityId()!='A05Z' and GetSpellAbilityId()!='A0FP' and GetSpellAbilityId()!='A0QY' and GetSpellAbilityId()!='A06X' and GetSpellAbilityId()!='A0AQ' and GetSpellAbilityId()!='A21X' and GetSpellAbilityId()!='A21W' and GetSpellAbilityId()!='A21V' and GetSpellAbilityId()!='A12W' and GetSpellAbilityId()!='A06K' and GetSpellAbilityId()!='Aeat' and GetSpellAbilityId()!='A0JY' and GetSpellAbilityId()!='A0FO' and GetSpellAbilityId()!='A1NI' and GetSpellAbilityId()!='A1MI' and GetSpellAbilityId()!='A2QE' and GetSpellAbilityId()!='A1Q8' and GetSpellAbilityId()!='A1RA' and GetSpellAbilityId()!='A1QV' and GetSpellAbilityId()!='A21Y' and GetSpellAbilityId()!='A1GU' and GetSpellAbilityId()!='A1YY' and Func0272(GetSpellAbilityId())==false then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A2NU')
        call UnitRemoveAbility(loc_unit02,'B05V')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        if GetSpellAbilityId()=='A0RV' or GetSpellAbilityId()=='A0LN' then
            call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
        else
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_ENDCAST)
        endif
        call TriggerAddCondition(loc_trigger01,Condition(function Func2356))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveBoolean(hashtable001,(loc_integer01),(95),(true))
    endif
    set loc_unit02=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction
