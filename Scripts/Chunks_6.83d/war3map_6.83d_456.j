
// 58365 ~ 58369
function Func2631 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'B02H')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))==false and GetUnitAbilityLevel(GetTriggerUnit(),'A04R')==0 then
    endif
    return false
endfunction

// 58371 ~ 58379
function Func2632 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2630))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2631))
    set loc_trigger01=null
endfunction
