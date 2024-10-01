
// 89052 ~ 89070
function Func4269 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2B5')
    if loc_integer02==6 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),false)
    endif
    call Func0115(loc_unit01,loc_unit02,1,20+10*loc_integer03)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89072 ~ 89083
function Func4270 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4269))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetEnumUnit()))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Weapons\\BansheeMissile\\BansheeMissile.mdl",GetEnumUnit(),"overhead")))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetEnumUnit(),"origin"))
    call UnitShareVision(GetEnumUnit(),GetOwningPlayer(GetTriggerUnit()),true)
    set loc_trigger01=null
endfunction

// 89085 ~ 89098
function Func4271 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(loc_unit02,'A2B7')
    call IssueImmediateOrderById(loc_unit02,852625)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),625,Condition(function Func0298))
    call ForGroup(loc_group01,function Func4270)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 89100 ~ 89105
function Func4272 takes nothing returns boolean
    if GetSpellAbilityId()=='A2B5' then
        call Func4271()
    endif
    return false
endfunction

// 89107 ~ 89112
function Func4273 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4272))
    set loc_trigger01=null
endfunction
