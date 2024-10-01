
// 91403 ~ 91419
function Func4407 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2N3')
    call Func0115(loc_unit01,loc_unit02,3,(0.032+0.002*loc_integer02)*GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
    if(TimerGetElapsed(timer001))>=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(782)))then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 91421 ~ 91438
function Func4408 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)*0.8)
    if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(782)))>(TimerGetElapsed(timer001))then
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(782),(((TimerGetElapsed(timer001))+real406)*1.0))
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4407))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("effects\\BasicWaterFlash.mdx",loc_unit02,"chest")))
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(782),(((TimerGetElapsed(timer001))+real406)*1.0))
    endif
    set loc_trigger01=null
endfunction

// 91440 ~ 91471
function Func4409 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    local integer loc_integer01
    local unit loc_unit01
    local unit loc_unit02
    if GetUnitAbilityLevel(GetTriggerUnit(),'B0G7')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A2N3')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        set loc_unit01=GetEventDamageSource()
        set loc_unit02=GetTriggerUnit()
        set loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(780)))
        set loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(781)))
        if loc_real02+real406<(TimerGetElapsed(timer001))then
            set loc_integer01=1
            set loc_real02=(TimerGetElapsed(timer001))
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(780),(loc_integer01))
            call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(781),((loc_real02)*1.0))
        else
            set loc_integer01=loc_integer01+1
            set loc_real02=(TimerGetElapsed(timer001))
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(780),(loc_integer01))
            call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(781),((loc_real02)*1.0))
        endif
        if loc_integer01==4 then
            set loc_integer01=0
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(780),(loc_integer01))
            call Func4408(loc_unit01,loc_unit02)
        endif
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 91473 ~ 91498
function Func4410 takes nothing returns nothing
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
        if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
            call SaveBoolean(hashtable001,(GetHandleId(loc_trigger01)),(264),(true))
        else
            call SaveBoolean(hashtable001,(GetHandleId(loc_trigger01)),(264),(false))
        endif
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit02))
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4409))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 91500 ~ 91515
function Func4411 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitAbilityLevel(GetAttacker(),'A2N3')>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            call Func4410()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A2N3' then
        call Func4410()
    endif
    return false
endfunction

// 91517 ~ 91525
function Func4412 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4411))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 91527 ~ 91532
function Func4413 takes nothing returns boolean
    if GetLearnedSkill()=='A2N3' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2N3')==1 then
        call Func4412()
    endif
    return false
endfunction

// 91534 ~ 91539
function Func4414 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4413))
    set loc_trigger01=null
endfunction
