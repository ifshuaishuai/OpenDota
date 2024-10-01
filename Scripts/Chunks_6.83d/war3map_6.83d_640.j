
// 71114 ~ 71129
function Func3363 takes nothing returns nothing
    if(GetLearnedSkill()=='A0EY')then
        if(GetUnitAbilityLevelSwapped('A0EY',GetTriggerUnit())==1)then
            call UnitAddAbility(GetTriggerUnit(),'A0F0')
            call UnitAddAbility(GetTriggerUnit(),'A0FH')
        else
            call SetUnitAbilityLevelSwapped('A0F0',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A0EY',GetTriggerUnit()))
            call SetUnitAbilityLevelSwapped('A0FH',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A0EY',GetTriggerUnit()))
        endif
    endif
    if(GetLearnedSkill()=='A0BR')then
        if(GetUnitAbilityLevelSwapped('A0BR',GetTriggerUnit())==1)then
            call UnitAddAbility(GetTriggerUnit(),'A0CQ')
        endif
    endif
endfunction

// 71131 ~ 71135
function Func3364 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(loc_trigger01,function Func3363)
endfunction

// 71137 ~ 71139
function Func3365 takes nothing returns boolean
    return GetSpellAbilityId()=='A29J' or GetSpellAbilityId()=='A1MP'
endfunction
