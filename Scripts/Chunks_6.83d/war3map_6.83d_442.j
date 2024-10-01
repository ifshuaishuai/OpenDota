
// 57356 ~ 57375
function Func2572 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=Func2569(loc_unit01)
    local unit loc_unit03=GetSpellTargetUnit()
    if GetSpellTargetItem()!=null and Func0607(GetItemTypeId(GetSpellTargetItem()))==false then
        call Func0123(loc_unit01)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0N3'))
    endif
    set unit313=loc_unit02
    if loc_unit02==null then
        call Func0123(loc_unit01)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0DA'))
    elseif GetOwningPlayer(loc_unit03)==GetOwningPlayer(loc_unit01)then
        call Func0123(loc_unit01)
        call Func0120(GetOwningPlayer(loc_unit01),GetObjectName('n0CY'))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 57377 ~ 57386
function Func2573 takes nothing returns boolean
    if GetSpellAbilityId()=='A0BZ' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call Func2572()
        else
            call Func2571()
        endif
    endif
    return false
endfunction

// 57388 ~ 57394
function Func2574 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2573))
    set loc_trigger01=null
endfunction
