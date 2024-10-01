
// 46970 ~ 46972
function Func1923 takes nothing returns boolean
    return GetLearnedSkill()==('A0CL')and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 46974 ~ 46977
function Func1924 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),('R006'),GetPlayerTechCount(GetOwningPlayer(loc_unit01),('R006'),true)+1)
endfunction

// 46979 ~ 46984
function Func1925 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1923))
    call TriggerAddAction(loc_trigger01,function Func1924)
endfunction
