
// 50687 ~ 50698
function Func2167 takes nothing returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A09Z')
    local real loc_real01
    if loc_integer01==1 then
        set loc_real01=450
    elseif loc_integer01==2 then
        set loc_real01=675
    elseif loc_integer01==3 then
        set loc_real01=950
    endif
    call Func0115(GetTriggerUnit(),GetSpellTargetUnit(),7,loc_real01)
endfunction

// 50700 ~ 50705
function Func2168 takes nothing returns boolean
    if(GetSpellAbilityId()=='A09Z')and Func0028(GetSpellTargetUnit())==false then
        call Func2167()
    endif
    return false
endfunction

// 50707 ~ 50713
function Func2169 takes nothing returns boolean
    if(GetSpellAbilityId()=='A01P')and Func0098(GetSpellTargetUnit())then
        call Func0123(GetTriggerUnit())
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0LR'))
    endif
    return false
endfunction

// 50715 ~ 50723
function Func2170 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2169))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2168))
    set loc_trigger01=null
endfunction

// 50725 ~ 50736
function Func2171 takes nothing returns boolean
    if GetLearnedSkill()=='A041' then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A041')==4 then
            call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'Remg',6)
        else
            call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'Remg',GetUnitAbilityLevel(GetTriggerUnit(),'A041'))
        endif
    elseif GetLearnedSkill()=='A062' then
        call SetPlayerTechResearched(GetOwningPlayer(GetTriggerUnit()),'R00I',1)
    endif
    return false
endfunction

// 50738 ~ 50743
function Func2172 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2171))
    set loc_trigger01=null
endfunction
