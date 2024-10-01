
// 83086 ~ 83103
function Func3995 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2L1')
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>4 then
        call UnitRemoveAbility(loc_unit02,'A2L8')
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4311)),(2))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call Func0115(loc_unit01,loc_unit02,1,20*loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 83105 ~ 83123
function Func3996 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3995))
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_unit02,"chest")))
    call UnitAddAbility(loc_unit02,'A2L8')
    call UnitMakeAbilityPermanent(loc_unit02,true,'A2L8')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2L8',false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4311)),(1))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 83125 ~ 83136
function Func3997 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local group loc_group01=Func0030()
    call DestroyEffect(AddSpecialEffect("Environment\\LargeBuildingFire\\LargeBuildingFire1.mdl",loc_real01,loc_real02))
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,275+25,Condition(function Func0298))
    call ForGroup(loc_group01,function Func3996)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 83138 ~ 83143
function Func3998 takes nothing returns boolean
    if GetSpellAbilityId()=='A2L1' then
        call Func3997()
    endif
    return false
endfunction

// 83145 ~ 83150
function Func3999 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3998))
    set loc_trigger01=null
endfunction
