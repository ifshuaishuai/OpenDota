
// 59762 ~ 59813
function Func2726 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(193)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(15)))
    local integer loc_integer03
    if GetTriggerEvalCount(loc_trigger01)==1 then
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    endif
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==loc_unit01 and GetTriggerUnit()==loc_unit02 then
            call DestroyEffect(AddSpecialEffectTarget("effects\\Tornado.mdx",loc_unit01,"hand,left"))
            call DestroyEffect(AddSpecialEffectTarget("effects\\Tornado.mdx",loc_unit01,"hand,right"))
            if GetUnitAbilityLevel(loc_unit01,'A12R')==0 then
                call Func0193(loc_unit01,'A12R')
                set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1D6')
            endif
        elseif GetAttacker()==loc_unit01 and GetTriggerUnit()!=loc_unit02 then
            call UnitRemoveAbility(loc_unit01,'A12R')
            call UnitRemoveAbility(loc_unit01,'B09X')
            call UnitRemoveAbility(loc_unit01,'A1FK')
            call UnitRemoveAbility(loc_unit01,'A1FL')
            call UnitRemoveAbility(loc_unit01,'A1FJ')
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 then
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+(loc_real01)*GetEventDamage())
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A12P' or GetSpellAbilityId()=='A1D6' then
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A12R')
        call UnitRemoveAbility(loc_unit01,'B09X')
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A1FK')
        call UnitRemoveAbility(loc_unit01,'A1FL')
        call UnitRemoveAbility(loc_unit01,'A1FJ')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 59815 ~ 59847
function Func2727 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A12P')
    local real loc_real01=0.6-loc_integer02*0.1
    local boolean loc_boolean01=false
    call UnitRemoveAbility(loc_unit01,'A12R')
    call UnitRemoveAbility(loc_unit01,'B09X')
    if loc_integer02==0 then
        set loc_boolean01=true
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1D6')
        set loc_real01=0.45-loc_integer02*0.15
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A12R',false)
    call Func0193(loc_unit01,'A12R')
    call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveBoolean(hashtable001,(loc_integer01),(15),(loc_boolean01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveReal(hashtable001,(loc_integer01),(193),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(361),(0))
    call TriggerRegisterTimerEvent(loc_trigger01,20,false)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2726))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 59849 ~ 59854
function Func2728 takes nothing returns boolean
    if(GetSpellAbilityId()=='A12P' or GetSpellAbilityId()=='A1D6')and Func0028(GetSpellTargetUnit())==false then
        call Func2727()
    endif
    return false
endfunction

// 59856 ~ 59861
function Func2729 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2728))
    set loc_trigger01=null
endfunction
