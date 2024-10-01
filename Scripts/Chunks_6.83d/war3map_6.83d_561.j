
// 65376 ~ 65380
function Func3049 takes unit loc_unit01 returns nothing
    if GetUnitAbilityLevel(loc_unit01,'A0XL')>0 then
        call SetUnitAbilityLevel(loc_unit01,'A0XL',(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000))))
    endif
endfunction

// 65382 ~ 65387
function Func3050 takes nothing returns boolean
    if IsUnitIllusion(GetTriggerUnit())==false then
        call Func3049(GetTriggerUnit())
    endif
    return false
endfunction

// 65389 ~ 65398
function Func3051 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3048))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3050))
    call Func0134('A0VH',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
