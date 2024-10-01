
// 61664 ~ 61679
function Func2830 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if Func0194(loc_unit01)then
        return false
    endif
    if GetUnitTypeId(loc_unit01)=='O016' then
        call SetUnitFlyHeight(loc_unit01,170,0)
    elseif GetUnitTypeId(loc_unit01)=='O017' then
        call SetUnitFlyHeight(loc_unit01,220,0)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 61681 ~ 61690
function Func2831 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2830))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
