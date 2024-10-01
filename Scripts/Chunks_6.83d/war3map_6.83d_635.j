
// 70911 ~ 70924
function Func3347 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1H5')
    local real loc_real01=GetHeroInt(loc_unit02,true)*(3+0.5*loc_integer01)
    local integer loc_integer02=IMinBJ(R2I(loc_real01),R2I(GetUnitState(loc_unit02,UNIT_STATE_MANA)))
    call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MANA)-loc_integer02)
    call Func0115(loc_unit01,loc_unit02,1,loc_integer02)
    call Func0248("MBUR",loc_unit01,loc_unit02,1,1,1,1,0.5)
    call Func0173("-"+I2S(loc_integer02),3,loc_unit02,0.023,82,82,255,255)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\ManaBurn\\ManaBurnTarget.mdl",loc_unit02,"chest"))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70926 ~ 70931
function Func3348 takes nothing returns boolean
    if GetSpellAbilityId()=='A1H5' and Func0028(GetSpellTargetUnit())==false then
        call Func3347()
    endif
    return false
endfunction

// 70933 ~ 70938
function Func3349 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3348))
    set loc_trigger01=null
endfunction
