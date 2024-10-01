
// 46932 ~ 46942
function Func1920 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    if GetUnitTypeId(loc_unit01)=='H00G' or GetUnitTypeId(loc_unit01)=='H00F' or GetUnitTypeId(loc_unit01)=='H00E' then
        call SetUnitAnimation(loc_unit01,"stand")
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl",loc_unit01,"head"))
    elseif GetUnitTypeId(loc_unit01)=='Hlgr' then
        call SetUnitAnimation(loc_unit01,"stand defend")
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Defend\\DefendCaster.mdl",loc_unit01,"origin"))
    endif
    set loc_unit01=null
endfunction

// 46944 ~ 46949
function Func1921 takes nothing returns boolean
    if GetSpellAbilityId()=='A0AR' then
        call Func1920()
    endif
    return false
endfunction

// 46951 ~ 46960
function Func1922 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1921))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1919))
    call Func0132('A0AR')
    set loc_trigger01=null
endfunction
