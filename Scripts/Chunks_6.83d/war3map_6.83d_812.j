
// 84953 ~ 84962
function Func4079 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    call Func0145(loc_unit01,GetEventDamage()*0.05*loc_integer02)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
