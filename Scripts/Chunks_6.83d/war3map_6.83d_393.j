
// 53912 ~ 53924
function Func2368 takes nothing returns boolean
    local real loc_real01
    if GetUnitAbilityLevel(GetTriggerUnit(),'B05X')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A0LZ')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call UnitRemoveAbility(GetTriggerUnit(),'B05X')
        set loc_real01=(0.1+0.2*I2R(GetUnitAbilityLevel(GetEventDamageSource(),'A0LZ')))*GetHeroInt(GetEventDamageSource(),true)
        call Func0173("+"+I2S(R2I(loc_real01)),1,GetTriggerUnit(),0.023,3,216,216,216)
        call DisableTrigger(GetTriggeringTrigger())
        call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,loc_real01)
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 53926 ~ 53946
function Func2369 takes nothing returns nothing
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
        call TriggerAddCondition(loc_trigger01,Condition(function Func2368))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 53948 ~ 53963
function Func2370 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitAbilityLevel(GetAttacker(),'A0LZ')>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            call Func2369()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0LZ' then
        call Func2369()
    endif
    return false
endfunction

// 53965 ~ 53973
function Func2371 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2370))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 53975 ~ 53980
function Func2372 takes nothing returns boolean
    if GetLearnedSkill()=='A0LZ' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0LZ')==1 then
        call Func2371()
    endif
    return false
endfunction

// 53982 ~ 53987
function Func2373 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2372))
    set loc_trigger01=null
endfunction
