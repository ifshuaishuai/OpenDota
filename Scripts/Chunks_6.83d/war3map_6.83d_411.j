
// 55064 ~ 55078
function Func2440 takes nothing returns boolean
    if((GetUnitTypeId(GetFilterUnit())=='n01G'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n01C'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n018'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n004'))then
        return true
    endif
    return false
endfunction

// 55080 ~ 55113
function Func2441 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,GetSpellAbilityId())
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func2440))
    set loc_unit02=FirstOfGroup(loc_group01)
    call Func0029(loc_group01)
    if GetSpellAbilityId()=='A1EF' then
        call Func0193(loc_unit03,'A0AA')
        call SetUnitAbilityLevel(loc_unit03,'A0AA',loc_integer01)
    elseif GetSpellAbilityId()=='A1EE' then
        call Func0193(loc_unit03,'A0AB')
        call SetUnitAbilityLevel(loc_unit03,'A0AB',loc_integer01)
    elseif GetSpellAbilityId()=='A1EH' then
        call Func0193(loc_unit03,'A0AC')
        call SetUnitAbilityLevel(loc_unit03,'A0AC',loc_integer01)
    elseif GetSpellAbilityId()=='A1EI' then
        call Func0193(loc_unit03,'A0AD')
        call SetUnitAbilityLevel(loc_unit03,'A0AD',loc_integer01)
    elseif GetSpellAbilityId()=='A1EG' then
        call Func0193(loc_unit03,'A0AE')
        call SetUnitAbilityLevel(loc_unit03,'A0AE',loc_integer01)
    endif
    call IssueTargetOrder(loc_unit03,"bloodlust",loc_unit01)
    if loc_unit02!=null and Func0194(loc_unit02)==false then
        call IssueTargetOrder(loc_unit03,"bloodlust",loc_unit02)
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 55115 ~ 55120
function Func2442 takes nothing returns boolean
    if GetSpellAbilityId()=='A1EF' or GetSpellAbilityId()=='A1EE' or GetSpellAbilityId()=='A1EH' or GetSpellAbilityId()=='A1EI' or GetSpellAbilityId()=='A1EG' then
        call Func2441()
    endif
    return false
endfunction

// 55122 ~ 55127
function Func2443 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2442))
    set loc_trigger01=null
endfunction
