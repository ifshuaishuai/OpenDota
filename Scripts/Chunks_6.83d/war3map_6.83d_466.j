
// 59122 ~ 59139
function Func2689 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(352)))
    if loc_integer02>0 and GetTriggerEventId()!=EVENT_UNIT_DEATH then
        if GetEventDamage()>5 then
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PriestMissile\\PriestMissile.mdl",loc_unit01,"right hand"))
            call Func0145(loc_unit01,GetEventDamage())
            call SaveInteger(hashtable001,(loc_integer01),(352),(loc_integer02-1))
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A0RN')
        call UnitRemoveAbility(loc_unit01,'B08J')
        call SaveInteger(hashtable001,(loc_integer01),(352),(0))
    endif
    set loc_unit01=null
    return false
endfunction

// 59141 ~ 59159
function Func2690 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(351)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==loc_unit01 and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false)then
        if GetTriggerEventId()!=EVENT_UNIT_DEATH and loc_integer02>0 and GetEventDamage()>0 then
            call SaveInteger(hashtable001,(loc_integer01),(351),(loc_integer02-1))
        else
            call UnitRemoveAbility(loc_unit01,'A0RF')
            call UnitRemoveAbility(loc_unit01,'A0RM')
            call UnitRemoveAbility(loc_unit01,'B08I')
            call SaveInteger(hashtable001,(loc_integer01),(351),(0))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 59161 ~ 59175
function Func2691 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    call SaveInteger(hashtable001,(loc_integer01),(352),(0))
    call SaveInteger(hashtable001,(loc_integer01),(351),(0))
    call UnitRemoveAbility(loc_unit01,'A0RF')
    call UnitRemoveAbility(loc_unit01,'A0RM')
    call UnitRemoveAbility(loc_unit01,'A0RN')
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 59177 ~ 59192
function Func2692 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,17,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2691))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    call Func0184(sound035,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call Func0193(loc_unit01,'A0RN')
    call SaveInteger(hashtable001,(loc_integer01),(352),(GetUnitAbilityLevel(loc_unit01,'A1EA')+2))
    call Func0193(loc_unit01,'A0RF')
    call SetUnitAbilityLevel(loc_unit01,'A0RF',GetUnitAbilityLevel(loc_unit01,'A1EA'))
    call Func0193(loc_unit01,'A0RM')
    call SaveInteger(hashtable001,(loc_integer01),(351),(GetUnitAbilityLevel(loc_unit01,'A1EA')+2))
    set loc_unit01=null
endfunction

// 59194 ~ 59210
function Func2693 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2689))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(352),(0))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2690))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(351),(0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 59212 ~ 59217
function Func2694 takes nothing returns boolean
    if GetLearnedSkill()=='A1EA' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A1EA')==1 then
        call Func2693()
    endif
    return false
endfunction

// 59219 ~ 59224
function Func2695 takes nothing returns boolean
    if GetSpellAbilityId()=='A1EA' then
        call Func2692()
    endif
    return false
endfunction

// 59226 ~ 59234
function Func2696 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2695))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2694))
    set loc_trigger01=null
endfunction
