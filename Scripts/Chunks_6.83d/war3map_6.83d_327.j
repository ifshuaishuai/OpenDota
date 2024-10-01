
// 49845 ~ 49853
function Func2120 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),real294,real295)
    if loc_real01<real293 then
        set unit288=GetEnumUnit()
        set real293=loc_real01
    endif
    set loc_unit01=null
endfunction

// 49855 ~ 49901
function Func2121 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01
    local group loc_group01
    if loc_unit01==null then
        set unit288=null
        set real293=999999
        set real294=GetSpellTargetX()
        set real295=GetSpellTargetY()
        set unit124=loc_unit02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0338))
        call GroupRemoveUnit(loc_group01,loc_unit02)
        call ForGroup(loc_group01,function Func2120)
        call Func0029(loc_group01)
        set loc_unit01=unit288
        set loc_group01=null
    endif
    if GetSpellAbilityId()=='A10U' then
        set loc_real01=5
    elseif GetSpellAbilityId()=='A11Y' then
        set loc_real01=4
    elseif GetSpellAbilityId()=='A11Z' then
        set loc_real01=3
    elseif GetSpellAbilityId()=='A1N1' then
        set loc_real01=3
    endif
    if loc_unit01!=null then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2119))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",loc_unit02,"origin")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTo.mdl",loc_unit01,"origin")))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 49903 ~ 49908
function Func2122 takes nothing returns boolean
    if GetSpellAbilityId()=='A10U' or GetSpellAbilityId()=='A11Y' or GetSpellAbilityId()=='A11Z' then
        call Func2121()
    endif
    return false
endfunction
