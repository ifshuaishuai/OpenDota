
// 86173 ~ 86185
function Func4129 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call IssueTargetOrder(loc_unit01,"move",loc_unit02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 86187 ~ 86199
function Func4130 takes nothing returns nothing
    local unit loc_unit01=GetSummonedUnit()
    local unit loc_unit02=GetSummoningUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4129))
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 86201 ~ 86207
function Func4131 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetSummonedUnit())
    if loc_integer01=='o01J' or loc_integer01=='o01K' or loc_integer01=='o01L' or loc_integer01=='o01M' then
        call Func4130()
    endif
    return false
endfunction

// 86209 ~ 86213
function Func4132 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4131))
endfunction
