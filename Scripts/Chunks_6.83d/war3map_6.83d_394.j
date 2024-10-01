
// 53989 ~ 54012
function Func2374 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and loc_integer03<(6)then
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MANA)-8*loc_integer02)
        call Func0115(loc_unit01,loc_unit02,1,5+15*loc_integer02)
    elseif loc_integer03>=(6)or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()!='A12W' and GetSpellAbilityId()!='A0FO' and GetSpellAbilityId()!='A1MO' and GetSpellAbilityId()!='A1C0' and GetSpellAbilityId()!='A1ZI' and GetSpellAbilityId()!='A28Y' and Func0471(GetSpellAbilityId())==false and(Func0080(GetSpellAbilityId())or GetSpellAbilityId()=='A06K'))then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A1PS')
        call UnitRemoveAbility(loc_unit02,'B0CQ')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 54014 ~ 54033
function Func2375 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A14L')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0193(loc_unit02,'A1PS')
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2374))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareTarget.mdl",loc_unit02,"overhead")))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 54035 ~ 54047
function Func2376 takes nothing returns nothing
    local group loc_group01
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A14L')
    if loc_integer01>0 then
        set loc_group01=Func0030()
        set unit124=GetTriggerUnit()
        set unit302=GetTriggerUnit()
        call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0340))
        call ForGroup(loc_group01,function Func2375)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
endfunction

// 54049 ~ 54061
function Func2377 takes nothing returns nothing
    local group loc_group01=Func0030()
    local location loc_location01=GetSpellTargetLoc()
    set unit124=GetTriggerUnit()
    set unit302=GetTriggerUnit()
    call GroupEnumUnitsInRange(loc_group01,GetLocationX(loc_location01),GetLocationY(loc_location01),375,Condition(function Func0340))
    call ForGroup(loc_group01,function Func2375)
    call Func0163("war3mapImported\\CotS.mdx",GetLocationX(loc_location01),GetLocationY(loc_location01),5)
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    set loc_group01=null
    set loc_location01=null
endfunction

// 54063 ~ 54068
function Func2378 takes nothing returns boolean
    if GetSpellAbilityId()=='A14L' then
        call Func2377()
    endif
    return false
endfunction

// 54070 ~ 54075
function Func2379 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2378))
    set loc_trigger01=null
endfunction
