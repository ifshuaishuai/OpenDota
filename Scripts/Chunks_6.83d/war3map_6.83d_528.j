
// 63141 ~ 63160
function Func2915 takes nothing returns boolean
    local real loc_real01
    if GetUnitAbilityLevel(GetTriggerUnit(),'B06Y')>0 and GetUnitAbilityLevel(GetEventDamageSource(),'A0OI')>0 and(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))==GetEventDamageSource()then
        call UnitRemoveAbility(GetTriggerUnit(),'B06Y')
        set loc_real01=0.01*(5+GetUnitAbilityLevel(GetEventDamageSource(),'A0OI'))*(GetUnitState(GetEventDamageSource(),UNIT_STATE_MANA)+100)
        if(IsUnitType(GetTriggerUnit(),UNIT_TYPE_SUMMONED)==true or IsUnitIllusion(GetTriggerUnit()))and GetUnitTypeId(GetTriggerUnit())!='n004' and GetUnitTypeId(GetTriggerUnit())!='n018' and GetUnitTypeId(GetTriggerUnit())!='n01C' and GetUnitTypeId(GetTriggerUnit())!='n01G' and GetUnitTypeId(GetTriggerUnit())!='n00U' and GetUnitTypeId(GetTriggerUnit())!='n00Y' and GetUnitTypeId(GetTriggerUnit())!='n00Z' then
            set loc_real01=loc_real01+100*GetUnitAbilityLevel(GetEventDamageSource(),'A0OI')
        endif
        call Func0173("+"+I2S(R2I(loc_real01)),1,GetTriggerUnit(),0.023,191,64,255,216)
        if(GetRandomInt(1,100)<=GetUnitAbilityLevel(GetEventDamageSource(),'A0IF')*10)and((LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(264)))==false)then
            call SetUnitState(GetEventDamageSource(),UNIT_STATE_MANA,GetUnitState(GetEventDamageSource(),UNIT_STATE_MANA)+0.25*GetUnitState(GetEventDamageSource(),UNIT_STATE_MAX_MANA))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCasterOverhead.mdl",GetEventDamageSource(),"overhead"))
        endif
        call DisableTrigger(GetTriggeringTrigger())
        call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,loc_real01)
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 63162 ~ 63187
function Func2916 takes nothing returns nothing
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
        call TriggerAddCondition(loc_trigger01,Condition(function Func2915))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 63189 ~ 63204
function Func2917 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitAbilityLevel(GetAttacker(),'A0OI')>0 and(LoadBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            call Func2916()
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if(GetIssuedOrderId()==OrderId("poisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(true))
        elseif(GetIssuedOrderId()==OrderId("unpoisonarrows"))then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggeringTrigger())),(263),(false))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0OI' then
        call Func2916()
    endif
    return false
endfunction

// 63206 ~ 63214
function Func2918 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2917))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 63216 ~ 63221
function Func2919 takes nothing returns boolean
    if GetLearnedSkill()=='A0OI' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0OI')==1 then
        call Func2918()
    endif
    return false
endfunction

// 63223 ~ 63228
function Func2920 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2919))
    set loc_trigger01=null
endfunction
