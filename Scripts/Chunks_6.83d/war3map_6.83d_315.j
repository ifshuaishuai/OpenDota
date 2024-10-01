
// 48832 ~ 48862
function Func2059 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer05)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEvalCount(loc_trigger01)>8 or Func0194(loc_unit01)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(31))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        set loc_integer02=GetHandleId(loc_unit02)
        set loc_integer03=6000+GetHandleId(loc_unit01)
        set loc_integer04=(LoadInteger(hashtable001,(loc_integer02),(loc_integer03)))
        set loc_integer04=loc_integer04-1
        if loc_integer04==0 then
            call SaveInteger(hashtable001,(loc_integer02),(loc_integer03),(0))
        else
            call SaveInteger(hashtable001,(loc_integer02),(loc_integer03),(loc_integer04))
        endif
        call Func0021(loc_integer05)
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit02,loc_unit01,1,5*GetUnitAbilityLevel(loc_unit02,'A0QN'))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 48864 ~ 48878
function Func2060 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02
    local trigger loc_trigger01
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(6000+GetHandleId(loc_unit02))))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2059))
    set loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer01),(6000+GetHandleId(loc_unit02)),(loc_integer03+1))
    call SaveEffectHandle(hashtable001,(loc_integer02),(31),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireDamage.mdl",loc_unit02,"chest")))
    set loc_trigger01=null
endfunction

// 48880 ~ 48891
function Func2061 takes nothing returns boolean
    local real loc_real01
    if GetUnitAbilityLevel(GetTriggerUnit(),'B081')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A0QN')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call SetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE,Func0142(GetUnitState(GetEventDamageSource(),UNIT_STATE_LIFE)-15,1))
        call UnitRemoveAbility(GetTriggerUnit(),'B081')
        call Func2060(GetEventDamageSource(),GetTriggerUnit())
        call DisableTrigger(GetTriggeringTrigger())
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 48893 ~ 48913
function Func2062 takes nothing returns nothing
    local trigger loc_trigger01
    local unit loc_unit01
    local unit loc_unit02
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        set loc_unit01=GetSpellTargetUnit()
        set loc_unit02=GetTriggerUnit()
    else
        set loc_unit01=GetTriggerUnit()
        set loc_unit02=GetAttacker()
    endif
    if IsUnitIllusion(loc_unit02)==false then
        set loc_trigger01=CreateTrigger()
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit02))
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2061))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 48915 ~ 48930
function Func2063 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitAbilityLevel(GetAttacker(),'A0QN')>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            call Func2062()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0QN' then
        call Func2062()
    endif
    return false
endfunction

// 48932 ~ 48940
function Func2064 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2063))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 48942 ~ 48947
function Func2065 takes nothing returns boolean
    if GetLearnedSkill()=='A0QN' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0QN')==1 then
        call Func2064()
    endif
    return false
endfunction

// 48949 ~ 48954
function Func2066 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2065))
    set loc_trigger01=null
endfunction
