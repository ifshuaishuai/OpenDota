
// 55294 ~ 55296
function Func2455 takes nothing returns boolean
    return GetLearnedSkill()=='A0A8' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 55298 ~ 55301
function Func2456 takes nothing returns nothing
    call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'R000',GetPlayerTechCount(GetOwningPlayer(GetTriggerUnit()),'R000',true)+1)
    call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'R001',GetPlayerTechCount(GetOwningPlayer(GetTriggerUnit()),'R001',true)+1)
endfunction

// 55303 ~ 55308
function Func2457 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2455))
    call TriggerAddAction(loc_trigger01,function Func2456)
endfunction

// 55310 ~ 55312
function Func2458 takes nothing returns boolean
    return GetSpellAbilityId()=='A0A5'
endfunction
