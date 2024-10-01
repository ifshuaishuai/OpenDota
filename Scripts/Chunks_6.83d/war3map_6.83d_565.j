
// 65694 ~ 65709
function Func3069 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(3007)))
    if loc_real01+5<=(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A0VW')
    endif
    call Func0021(loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 65711 ~ 65724
function Func3070 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0VW')
    if loc_integer02==0 then
        call Func0193(loc_unit01,'A0VW')
    endif
    call SetUnitAbilityLevel(loc_unit01,'A0VW',loc_integer02+1)
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(3007),(((TimerGetElapsed(timer001)))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3069))
    set loc_trigger01=null
endfunction

// 65726 ~ 65736
function Func3071 takes nothing returns boolean
    local real loc_real01
    if GetUnitAbilityLevel(GetTriggerUnit(),'B091')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A0VV')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call UnitRemoveAbility(GetTriggerUnit(),'B091')
        call DisableTrigger(GetTriggeringTrigger())
        call Func3070(GetTriggerUnit())
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 65738 ~ 65758
function Func3072 takes nothing returns nothing
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
        call TriggerAddCondition(loc_trigger01,Condition(function Func3071))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 65760 ~ 65775
function Func3073 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitAbilityLevel(GetAttacker(),'A0VV')>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(3008)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))then
            call Func3072()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(3008),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(3008),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0VV' then
        call Func3072()
    endif
    return false
endfunction

// 65777 ~ 65786
function Func3074 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3073))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    call SaveBoolean(hashtable001,(GetHandleId(loc_trigger01)),(3008),(true))
    set loc_trigger01=null
endfunction
