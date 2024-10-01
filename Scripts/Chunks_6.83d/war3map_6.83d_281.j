
// 47084 ~ 47094
function Func1932 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call Func1917(loc_unit01)
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47096 ~ 47106
function Func1933 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call Func1917(loc_unit01)
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47108 ~ 47112
function Func1934 takes nothing returns nothing
    if GetUnitAbilityLevel(unit124,'A0AR')>0 then
        call Func1917(unit124)
    endif
endfunction
