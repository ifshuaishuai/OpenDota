
// 53491 ~ 53517
function Func2344 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2ML')
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>5 then
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
            call Func0145(loc_unit02,RMinBJ(GetEventDamage(),20*GetUnitAbilityLevel(loc_unit01,'A2ML')))
        endif
    endif
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or loc_integer02>(loc_integer03+3-1)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit02,'A2MX')
        call UnitRemoveAbility(loc_unit02,'A2MY')
        call UnitRemoveAbility(loc_unit02,'A2MW')
        call UnitRemoveAbility(loc_unit02,'A2MV')
        call UnitRemoveAbility(loc_unit02,'B0G5')
    endif
    set loc_trigger01=null
    set loc_unit02=null
    return false
endfunction

// 53519 ~ 53558
function Func2345 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02='A2MX'
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2ML')
    local group loc_group01
    if loc_unit02==null then
        set unit299=null
        set unit300=loc_unit01
        set real304=999999
        set real305=GetSpellTargetX()
        set real306=GetSpellTargetY()
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0322))
        call ForGroup(loc_group01,function Func2343)
        call Func0029(loc_group01)
        set loc_unit02=unit299
        set loc_group01=null
    endif
    if loc_integer03==2 then
        set loc_integer02='A2MY'
    elseif loc_integer03==3 then
        set loc_integer02='A2MW'
    elseif loc_integer03==4 then
        set loc_integer02='A2MV'
    endif
    call Func0193(loc_unit02,loc_integer02)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer02,false)
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2344))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 53560 ~ 53565
function Func2346 takes nothing returns boolean
    if GetSpellAbilityId()=='A2ML' then
        call Func2345()
    endif
    return false
endfunction

// 53567 ~ 53572
function Func2347 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2346))
    set loc_trigger01=null
endfunction
