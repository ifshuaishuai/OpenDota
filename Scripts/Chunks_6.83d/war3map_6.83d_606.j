
// 68952 ~ 68964
function Func3242 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A094')
    local integer loc_integer02=GetHeroLevel(loc_unit02)
    local real loc_real01=GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)*0.2
    if ModuloInteger(loc_integer02,7-loc_integer01)==0 or loc_integer02==25 then
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl",loc_unit02,"chest"))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 68966 ~ 68971
function Func3243 takes nothing returns boolean
    if GetSpellAbilityId()=='A094' then
        call Func3242()
    endif
    return false
endfunction

// 68973 ~ 68978
function Func3244 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3243))
    set loc_trigger01=null
endfunction
