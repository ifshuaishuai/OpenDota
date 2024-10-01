
// 89220 ~ 89240
function Func4281 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or(GetEventDamage()>30 and GetEventDamageSource()!=GetTriggerUnit()and Func0058(GetOwningPlayer(GetEventDamageSource())))then
        if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
            call Func0145(loc_unit01,GetEventDamage())
        endif
        call UnitRemoveAbility(loc_unit01,'A2IL')
        call UnitRemoveAbility(loc_unit01,'A2IM')
        call UnitRemoveAbility(loc_unit01,'A2BY')
        call UnitRemoveAbility(loc_unit01,'A2IN')
        call UnitRemoveAbility(loc_unit01,'B0F4')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 89242 ~ 89274
function Func4282 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2BV')
    local real loc_real01
    local integer loc_integer02
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    if loc_integer01==1 then
        set loc_real01=4
        set loc_integer02='A2IL'
    elseif loc_integer01==2 then
        set loc_real01=5
        set loc_integer02='A2IM'
    elseif loc_integer01==3 then
        set loc_real01=6
        set loc_integer02='A2BY'
    elseif loc_integer01==4 then
        set loc_real01=7
        set loc_integer02='A2IN'
    endif
    call Func0193(loc_unit02,loc_integer02)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4281))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer03),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIsp\\SpeedTarget.mdl",loc_unit02,"origin")))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89276 ~ 89284
function Func4283 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),375,Condition(function Func0333))
    call ForGroup(loc_group01,function Func4282)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 89286 ~ 89291
function Func4284 takes nothing returns boolean
    if GetSpellAbilityId()=='A2BV' then
        call Func4283()
    endif
    return false
endfunction

// 89293 ~ 89297
function Func4285 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4284))
endfunction
