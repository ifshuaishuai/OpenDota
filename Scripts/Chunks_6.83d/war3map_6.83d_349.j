
// 51174 ~ 51183
function Func2203 takes nothing returns nothing
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetExpiredTimer())),(14)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local string loc_string01=(LoadStr(hashtable001,(loc_integer01),(206)))
    if loc_string01=="Point"and Func0167(GetUnitX(loc_unit01),GetUnitY(loc_unit01),(LoadReal(hashtable001,(loc_integer01),(209))),(LoadReal(hashtable001,(loc_integer01),(210))))<100 then
        call SaveBoolean(hashtable001,(loc_integer01),(207),(true))
    endif
endfunction

// 51185 ~ 51199
function Func2204 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local timer loc_timer01
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddAction(loc_trigger01,function Func2202)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2201))
    call SaveTriggerHandle(hashtable001,(GetHandleId(loc_unit01)),(204),(loc_trigger01))
    set loc_timer01=CreateTimer()
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_timer01)),(14),(loc_unit01))
    call TimerStart(loc_timer01,0.3,true,function Func2203)
    call SaveTimerHandle(hashtable001,(GetHandleId(loc_unit01)),(205),(loc_timer01))
endfunction

// 51201 ~ 51205
function Func2205 takes nothing returns nothing
    if GetUnitAbilityLevel(GetTriggerUnit(),('A0LN'))==1 then
        call Func2204()
    endif
endfunction

// 51207 ~ 51215
function Func2206 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2194))
    call TriggerAddAction(loc_trigger01,function Func2200)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddAction(loc_trigger01,function Func2205)
endfunction
