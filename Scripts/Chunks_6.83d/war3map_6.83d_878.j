
// 90697 ~ 90709
function Func4365 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'Bpig')
    call UnitRemoveAbility(loc_unit01,'BEia')
    call UnitRemoveAbility(loc_unit01,'A2E6')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
