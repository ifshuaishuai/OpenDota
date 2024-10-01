
// 47554 ~ 47561
function Func1970 takes unit loc_unit01 returns integer
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0DY')
    if loc_integer01>0 then
        return loc_integer01
    endif
    set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1WB')
    return loc_integer01
endfunction

// 47563 ~ 47577
function Func1971 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    if GetUnitAbilityLevel(GetTriggerUnit(),'B03U')>0 and Func1970(GetEventDamageSource())>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call UnitRemoveAbility(GetTriggerUnit(),'B03U')
        set loc_real02=RMinBJ(Func1969(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(GetEventDamageSource()),GetUnitY(GetEventDamageSource())),2500)
        set loc_real01=(0.10+0.05*I2R(Func1970(GetEventDamageSource())))*loc_real02
        call Func0173("+"+I2S(R2I(loc_real01)),1,GetTriggerUnit(),0.023,3,216,216,216)
        call DisableTrigger(GetTriggeringTrigger())
        call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,loc_real01)
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 47579 ~ 47599
function Func1972 takes nothing returns nothing
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
        call TriggerAddCondition(loc_trigger01,Condition(function Func1971))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 47601 ~ 47616
function Func1973 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if Func1970(GetAttacker())>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            call Func1972()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()=='A0DY' or GetSpellAbilityId()=='A1WB')then
        call Func1972()
    endif
    return false
endfunction

// 47618 ~ 47626
function Func1974 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1973))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 47628 ~ 47633
function Func1975 takes nothing returns boolean
    if(GetLearnedSkill()=='A0DY' or GetLearnedSkill()=='A1WB')and IsUnitIllusion(GetTriggerUnit())==false and Func1970(GetTriggerUnit())==1 then
        call Func1974()
    endif
    return false
endfunction

// 47635 ~ 47640
function Func1976 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1975))
    set loc_trigger01=null
endfunction
