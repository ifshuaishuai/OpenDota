
// 4618 ~ 4620
function Func0190 takes nothing returns nothing
    call PauseUnit(GetEnumUnit(),true)
endfunction

// 4622 ~ 4629
function Func0191 takes nothing returns boolean
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,16000,Condition(function Func0175))
    call ForGroup(loc_group01,function Func0190)
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction

// 4631 ~ 4637
function Func0192 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0191))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction
