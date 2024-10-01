
// 75288 ~ 75295
function Func3613 takes nothing returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A30F')
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A30H',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A30W',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A30P',false)
    call Func0193(GetTriggerUnit(),'A30W')
    call SetUnitAbilityLevel(GetTriggerUnit(),'A30W',loc_integer01)
endfunction

// 75297 ~ 75302
function Func3614 takes nothing returns boolean
    if GetLearnedSkill()=='A30F' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3613()
    endif
    return false
endfunction

// 75304 ~ 75312
function Func3615 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3614))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3612))
    set loc_trigger01=null
endfunction
