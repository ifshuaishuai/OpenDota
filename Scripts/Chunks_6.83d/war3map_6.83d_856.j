
// 89114 ~ 89116
function Func4274 takes nothing returns integer
    return R2I((TimerGetElapsed(timer001))/60)
endfunction

// 89118 ~ 89125
function Func4275 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=GetHeroAgi(loc_unit01,false)
    local integer loc_integer03=GetHeroStr(loc_unit01,false)
    local integer loc_integer04=GetHeroInt(loc_unit01,false)
    call SetHeroAgi(loc_unit01,loc_integer02-loc_integer01,true)
    call SetHeroStr(loc_unit01,loc_integer03-loc_integer01,true)
    call SetHeroInt(loc_unit01,loc_integer04-loc_integer01,true)
endfunction
