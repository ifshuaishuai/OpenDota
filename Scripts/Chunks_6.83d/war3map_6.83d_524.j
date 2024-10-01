
// 63004 ~ 63014
function Func2902 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    if GetUnitAbilityLevel(loc_unit01,'AHfa')==0 then
        call Func0193(loc_unit01,'AHfa')
        if GetUnitAbilityLevel(loc_unit01,'BOwk')>0 then
            call UnitRemoveAbility(loc_unit01,'BOwk')
        endif
    endif
    call SetUnitAbilityLevel(loc_unit01,'AHfa',GetUnitAbilityLevel(loc_unit01,'A2UO'))
    set loc_unit01=null
endfunction

// 63016 ~ 63021
function Func2903 takes nothing returns boolean
    if GetLearnedSkill()=='A2UO' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2902()
    endif
    return false
endfunction

// 63023 ~ 63028
function Func2904 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2903))
    set loc_trigger01=null
endfunction
