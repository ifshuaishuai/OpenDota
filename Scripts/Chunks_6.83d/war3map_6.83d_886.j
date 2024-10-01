
// 91292 ~ 91299
function Func4400 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call DisableTrigger(trigger071)
    call UnitWakeUp(loc_unit01)
    call IssueTargetOrder(loc_unit01,"attack",unit415)
    call EnableTrigger(trigger071)
    set loc_unit01=null
endfunction

// 91301 ~ 91303
function Func4401 takes nothing returns nothing
    call Func0044(GetEnumUnit(),4328,0.75)
endfunction
