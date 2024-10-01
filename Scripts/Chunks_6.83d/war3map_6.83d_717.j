
// 76278 ~ 76280
function Func3666 takes nothing returns boolean
    return GetSpellAbilityId()=='A0H4'
endfunction

// 76282 ~ 76289
function Func3667 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0H4')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(loc_unit02,'A2JN')
    call SetUnitAbilityLevel(loc_unit02,'A2JN',loc_integer01)
    call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
endfunction

// 76291 ~ 76296
function Func3668 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3666))
    call TriggerAddAction(loc_trigger01,function Func3667)
endfunction

// 76298 ~ 76300
function Func3669 takes nothing returns boolean
    return GetSpellAbilityId()=='A046' and Func0028(GetSpellTargetUnit())==false
endfunction

// 76302 ~ 76307
function Func3670 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local real loc_real01=(60.00+(50.00*I2R(GetUnitAbilityLevelSwapped('A046',GetTriggerUnit()))))
    call UnitDamageTargetBJ(GetTriggerUnit(),loc_unit01,loc_real01,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_COLD)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",loc_unit01,"chest"))
endfunction

// 76309 ~ 76314
function Func3671 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3669))
    call TriggerAddAction(loc_trigger01,function Func3670)
endfunction
