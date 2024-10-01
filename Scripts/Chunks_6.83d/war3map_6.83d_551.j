
// 64605 ~ 64614
function Func2996 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetEventDamage()
    if(loc_real01>0)and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>1 and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        if(GetRandomInt(1,100)<=(5+(5*GetUnitAbilityLevel(loc_unit01,'A0CZ'))))then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\WingedSerpentMissile\\WingedSerpentMissile.mdl",loc_unit01,"hand,left"))
        endif
    endif
endfunction

// 64616 ~ 64623
function Func2997 takes nothing returns nothing
    local trigger loc_trigger01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A0CZ')==1 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
        call TriggerAddAction(loc_trigger01,function Func2996)
    endif
endfunction

// 64625 ~ 64630
function Func2998 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2995))
    call TriggerAddAction(loc_trigger01,function Func2997)
endfunction
