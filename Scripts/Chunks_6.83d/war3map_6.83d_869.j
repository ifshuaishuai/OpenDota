
// 90009 ~ 90026
function Func4329 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
    else
        call UnitRemoveAbility(loc_unit01,'A2HX')
        call UnitRemoveAbility(loc_unit01,'A2I0')
        call UnitRemoveAbility(loc_unit01,'A2HY')
        call UnitRemoveAbility(loc_unit01,'A2HZ')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 90028 ~ 90055
function Func4330 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2HN')
    local real loc_real01=2+loc_integer02
    local integer loc_integer03='A2HX'
    if loc_integer02==1 then
        set loc_integer03='A2HX'
    elseif loc_integer02==2 then
        set loc_integer03='A2I0'
    elseif loc_integer02==3 then
        set loc_integer03='A2HY'
    elseif loc_integer02==4 then
        set loc_integer03='A2HZ'
    endif
    call Func0193(loc_unit02,loc_integer03)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4329))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 90057 ~ 90062
function Func4331 takes nothing returns boolean
    if GetSpellAbilityId()=='A2HN' and IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==true and Func0028(GetSpellTargetUnit())==false then
        call Func4330()
    endif
    return false
endfunction

// 90064 ~ 90069
function Func4332 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4331))
    set loc_trigger01=null
endfunction
