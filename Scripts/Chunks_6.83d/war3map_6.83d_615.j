
// 69401 ~ 69416
function Func3268 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetUnitAbilityLevel(loc_unit01,'B00U')==0 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A1Q0')
        call UnitRemoveAbility(loc_unit01,'A1Q1')
        call UnitRemoveAbility(loc_unit01,'A1Q2')
        call UnitRemoveAbility(loc_unit01,'A1Q3')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69418 ~ 69443
function Func3269 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A037')
    local integer loc_integer03
    if loc_integer02==1 then
        set loc_integer03='A1Q0'
    elseif loc_integer02==2 then
        set loc_integer03='A1Q1'
    elseif loc_integer02==3 then
        set loc_integer03='A1Q2'
    elseif loc_integer02==4 then
        set loc_integer03='A1Q3'
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
    call Func0193(loc_unit02,loc_integer03)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3268))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 69445 ~ 69450
function Func3270 takes nothing returns boolean
    if GetSpellAbilityId()=='A037' then
        call Func3269()
    endif
    return false
endfunction

// 69452 ~ 69457
function Func3271 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3270))
    set loc_trigger01=null
endfunction
