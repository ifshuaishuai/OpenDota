
// 50992 ~ 50994
function Func2190 takes nothing returns nothing
    call UnitRemoveAbility(GetEnumUnit(),('A0KT'))
endfunction

// 50996 ~ 51003
function Func2191 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(220)))
    call ForGroup(loc_group01,function Func2190)
    call Func0029(loc_group01)
    call Func0166(loc_timer01)
endfunction

// 51005 ~ 51017
function Func2192 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A0KU'))
    local real loc_real01=15
    set integer011=loc_integer02
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func2188))
    call ForGroup(loc_group01,function Func2189)
    call SaveGroupHandle(hashtable001,(loc_integer01),(220),(loc_group01))
    call TimerStart(loc_timer01,loc_real01,false,function Func2191)
endfunction

// 51019 ~ 51024
function Func2193 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2187))
    call TriggerAddAction(loc_trigger01,function Func2192)
endfunction
