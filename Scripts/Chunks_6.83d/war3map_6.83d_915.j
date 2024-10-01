
// 93439 ~ 93453
function Func4517 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local group loc_group01
    if loc_unit01==null then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetSpellTargetX(),GetSpellTargetY(),240+25,Condition(function Func4514))
        if FirstOfGroup(loc_group01)==null then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0N5'))
        endif
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_unit01=null
endfunction

// 93455 ~ 93464
function Func4518 takes nothing returns boolean
    if GetSpellAbilityId()=='A2QI' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call Func4517()
        else
            call Func4516()
        endif
    endif
    return false
endfunction

// 93466 ~ 93472
function Func4519 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4518))
    set loc_trigger01=null
endfunction
