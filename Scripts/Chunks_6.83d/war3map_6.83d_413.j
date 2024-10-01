
// 55179 ~ 55181
function Func2447 takes nothing returns nothing
    call Func0115(unit306,GetEnumUnit(),2,30)
endfunction

// 55183 ~ 55197
function Func2448 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(53)))
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit306=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),2000,Condition(function Func2446))
    call ForGroup(loc_group01,function Func2447)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction

// 55199 ~ 55208
function Func2449 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2448))
    call SaveUnitHandle(hashtable001,(loc_integer01),(53),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction
