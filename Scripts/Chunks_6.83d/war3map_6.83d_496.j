
// 60994 ~ 61049
function Func2804 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=6
    local unit loc_unit03
    local integer loc_integer04
    local fogmodifier loc_fogmodifier01=(LoadFogModifierHandle(hashtable001,(loc_integer01),(42)))
    if GetUnitAbilityLevel(loc_unit01,'A1D9')>0 then
        set loc_integer03=8
    endif
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        call FogModifierStop(loc_fogmodifier01)
        call DestroyFogModifier(loc_fogmodifier01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(4344),(false))
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if(LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(4344)))then
            set loc_integer04=GetUnitAbilityLevel(loc_unit01,'A04Y')
            if loc_integer04>0 and GetUnitAbilityLevel(loc_unit01,'A1D9')>0 then
                set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(GetAttacker()),GetUnitY(GetAttacker()),0)
                call Func0193(loc_unit03,'A04Y')
                call SetUnitAbilityLevel(loc_unit03,'A04Y',loc_integer04)
                call IssueTargetOrder(loc_unit03,"sleep",GetAttacker())
            endif
        endif
    else
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        if loc_integer02>loc_integer03 then
            call FogModifierStop(loc_fogmodifier01)
            call DestroyFogModifier(loc_fogmodifier01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func0123(loc_unit01)
        else
            set loc_real01=RMinBJ(0.05*GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA),GetUnitState(loc_unit02,UNIT_STATE_MANA))
            if GetUnitAbilityLevel(loc_unit01,'A1D9')>0 then
                set loc_real01=RMinBJ(0.1*GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA),GetUnitState(loc_unit02,UNIT_STATE_MANA))
            endif
            if loc_real01>0 then
                call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01)
                call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MANA)-loc_real01)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_fogmodifier01=null
    return false
endfunction

// 61051 ~ 61073
function Func2805 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local fogmodifier loc_fogmodifier01=CreateFogModifierRadius(GetOwningPlayer(loc_unit01),FOG_OF_WAR_VISIBLE,GetUnitX(loc_unit02),GetUnitY(loc_unit02),350,true,true)
    call FogModifierStart(loc_fogmodifier01)
    call UnitRemoveAbility(loc_unit02,'B02F')
    call UnitRemoveAbility(loc_unit02,'BUsp')
    call UnitRemoveAbility(loc_unit02,'Bust')
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2804))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveFogModifierHandle(hashtable001,(loc_integer01),(42),(loc_fogmodifier01))
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(4344),(true))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_fogmodifier01=null
endfunction

// 61075 ~ 61080
function Func2806 takes nothing returns boolean
    if GetSpellAbilityId()=='A02Q' or GetSpellAbilityId()=='A1D9' then
        call Func2805()
    endif
    return false
endfunction

// 61082 ~ 61087
function Func2807 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2806))
    set loc_trigger01=null
endfunction
