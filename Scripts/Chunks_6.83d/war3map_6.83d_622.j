
// 70115 ~ 70127
function Func3296 takes nothing returns boolean
    if GetSpellAbilityId()=='A1C0' then
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1ET',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1ES',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1EQ',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A1ER',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A2WL',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A23F',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A2WK',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetTriggerUnit()),'A2WJ',false)
    endif
    return false
endfunction

// 70129 ~ 70134
function Func3297 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3296))
    set loc_trigger01=null
endfunction
