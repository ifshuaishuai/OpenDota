
// 75870 ~ 75889
function Func3642 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A275')
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A276')
    elseif loc_integer01==2 then
        call UnitRemoveAbility(loc_unit01,'A276')
        call Func0193(loc_unit01,'A279')
    elseif loc_integer01==3 then
        call UnitRemoveAbility(loc_unit01,'A276')
        call UnitRemoveAbility(loc_unit01,'A279')
        call Func0193(loc_unit01,'A277')
    elseif loc_integer01==4 then
        call UnitRemoveAbility(loc_unit01,'A276')
        call UnitRemoveAbility(loc_unit01,'A279')
        call UnitRemoveAbility(loc_unit01,'A277')
        call Func0193(loc_unit01,'A278')
    endif
    set loc_unit01=null
endfunction

// 75891 ~ 75896
function Func3643 takes nothing returns boolean
    if GetLearnedSkill()=='A275' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3642()
    endif
    return false
endfunction

// 75898 ~ 75903
function Func3644 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3643))
    set loc_trigger01=null
endfunction
