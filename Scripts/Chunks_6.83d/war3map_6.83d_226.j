
// 43217 ~ 43219
function Func1696 takes nothing returns nothing
    call Func0115(unit270,GetEnumUnit(),1,real277)
endfunction

// 43221 ~ 43240
function Func1697 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2WE')
    local real loc_real01=(0.35+0.25*loc_integer01)*(GetUnitState(loc_unit02,UNIT_STATE_MAX_MANA)-GetUnitState(loc_unit02,UNIT_STATE_MANA))
    local group loc_group01=Func0030()
    call Func0365(loc_unit01,loc_unit02,0.1*loc_integer01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl",loc_unit02,"chest"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\SpiritOfVengeanceMissile\\SpiritOfVengeanceMissile.mdl",loc_unit02,"chest"))
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Enchantment.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),500+25,Condition(function Func0298))
    set real277=loc_real01
    set unit270=loc_unit01
    call ForGroup(loc_group01,function Func1696)
    call PlaySoundOnUnitBJ(sound017,100,loc_unit02)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 43242 ~ 43247
function Func1698 takes nothing returns boolean
    if GetSpellAbilityId()=='A2WE' and Func0028(GetSpellTargetUnit())==false then
        call Func1697()
    endif
    return false
endfunction

// 43249 ~ 43254
function Func1699 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1698))
    set loc_trigger01=null
endfunction
