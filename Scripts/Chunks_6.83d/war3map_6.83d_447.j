
// 57749 ~ 57756
function Func2597 takes nothing returns nothing
    if GetEnumUnit()==GetTriggerUnit()then
        call Func0246(GetEnumUnit(),'A0XE',integer491,real320,'B00B')
    else
        call Func0246(GetEnumUnit(),'A0XE',integer491,real320,'B00B')
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A0XE',false)
endfunction

// 57758 ~ 57766
function Func2598 takes nothing returns nothing
    local group loc_group01=Func0030()
    set integer491=GetUnitAbilityLevel(GetTriggerUnit(),'A1EJ')
    set real320=7
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0337))
    call ForGroup(loc_group01,function Func2597)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 57768 ~ 57773
function Func2599 takes nothing returns boolean
    if GetSpellAbilityId()=='A1EJ' then
        call Func2598()
    endif
    return false
endfunction

// 57775 ~ 57780
function Func2600 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2599))
    set loc_trigger01=null
endfunction
