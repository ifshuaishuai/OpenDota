
// 92783 ~ 92794
function Func4481 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_unit01)))
    call RemoveUnit(loc_unit01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
