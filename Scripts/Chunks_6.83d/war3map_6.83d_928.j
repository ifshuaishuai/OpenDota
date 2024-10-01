
// 94294 ~ 94304
function Func4565 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call SetUnitAnimationByIndex(loc_unit01,8)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 94306 ~ 94316
function Func4566 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitAnimationByIndex(loc_unit01,7)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4565))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 94318 ~ 94323
function Func4567 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='N0MU' or GetUnitTypeId(GetTriggerUnit())=='N0MW' then
        call Func4566()
    endif
    return false
endfunction

// 94325 ~ 94330
function Func4568 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4567))
    set loc_trigger01=null
endfunction
