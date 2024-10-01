
// 86306 ~ 86320
function Func4136 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    local integer loc_integer02
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4134))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 86322 ~ 86329
function Func4137 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetSummonedUnit())
    call Func4135()
    if Func0112(loc_integer01)then
        call Func4136()
    endif
    return false
endfunction

// 86331 ~ 86336
function Func4138 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4137))
    set loc_trigger01=null
endfunction
