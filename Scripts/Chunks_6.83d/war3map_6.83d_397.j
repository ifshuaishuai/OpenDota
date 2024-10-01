
// 54119 ~ 54121
function Func2384 takes nothing returns boolean
    return GetLearnedSkill()=='A03U'
endfunction

// 54123 ~ 54125
function Func2385 takes nothing returns nothing
    call SetPlayerTechResearchedSwap('R005',GetUnitAbilityLevelSwapped('A03U',GetTriggerUnit()),GetOwningPlayer(GetLearningUnit()))
endfunction

// 54127 ~ 54132
function Func2386 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2384))
    call TriggerAddAction(loc_trigger01,function Func2385)
endfunction
