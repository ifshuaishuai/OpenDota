
// 50519 ~ 50532
function Func2158 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2XQ')
    local trigger loc_trigger01
    local integer loc_integer02
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A11T')
    elseif loc_integer01==2 then
        call SetUnitAbilityLevel(loc_unit01,'A11T',loc_integer01)
    elseif loc_integer01==3 then
        call SetUnitAbilityLevel(loc_unit01,'A11T',loc_integer01)
    endif
    set loc_unit01=null
endfunction

// 50534 ~ 50548
function Func2159 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_HERO_SKILL then
        if GetLearnedSkill()=='A2XR' and IsUnitIllusion(GetTriggerUnit())==false then
            call Func2157()
        endif
        if GetLearnedSkill()=='A2XQ' and IsUnitIllusion(GetTriggerUnit())==false then
            call Func2158()
        endif
    else
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_PICKUP_ITEM and GetItemType(GetManipulatedItem())==ITEM_TYPE_PERMANENT and Func0399(GetManipulatedItem())==integer323 then
            call Func2157()
        endif
    endif
    return false
endfunction

// 50550 ~ 50556
function Func2160 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2159))
    set loc_trigger01=null
endfunction
