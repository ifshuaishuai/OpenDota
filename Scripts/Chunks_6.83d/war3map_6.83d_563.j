
// 65560 ~ 65563
function Func3060 takes unit loc_unit01 returns real
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))
    return(80+loc_integer01*35.0)/2
endfunction

// 65565 ~ 65570
function Func3061 takes unit loc_unit01 returns real
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3000)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))
    return 325+loc_integer01*175.0
endfunction
