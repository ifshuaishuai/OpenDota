
// 65262 ~ 65275
function Func3041 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitRemoveAbility(loc_unit01,'A0VJ')
    call UnitRemoveAbility(loc_unit01,'A109')
    if GetUnitAbilityLevel(loc_unit01,'A0VJ')==0 or GetUnitAbilityLevel(loc_unit01,'A109')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 65277 ~ 65296
function Func3042 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,'A0VJ')
    call UnitRemoveAbility(loc_unit01,'A109')
    if GetUnitAbilityLevel(loc_unit01,'A0VJ')>0 or GetUnitAbilityLevel(loc_unit01,'A109')>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3041))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 65298 ~ 65316
function Func3043 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))
    call Func0193(loc_unit02,'A0VJ')
    call SetUnitAbilityLevel(loc_unit02,'A0VJ',loc_integer02)
    call Func0193(loc_unit02,'A109')
    call SetUnitAbilityLevel(loc_unit02,'A109',loc_integer03)
    call TriggerRegisterTimerEvent(loc_trigger01,9,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3042))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIsp\\SpeedTarget.mdl",loc_unit02,"origin")))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 65318 ~ 65323
function Func3044 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VQ' then
        call Func3043()
    endif
    return false
endfunction

// 65325 ~ 65332
function Func3045 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3044))
    call Func0134('A0VJ',GetRandomReal(1,25))
    call Func0134('A109',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
