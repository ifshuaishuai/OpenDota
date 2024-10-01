
// 36401 ~ 36409
function Func1453 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    set boolean062=true
    call Func0035(loc_trigger01)
    call DestroyFogModifier(CreateFogModifierRadius(players003[0],FOG_OF_WAR_MASKED,real251,real252,700,false,false))
    call DestroyFogModifier(CreateFogModifierRadius(players004[0],FOG_OF_WAR_MASKED,real251,real252,700,false,false))
    set loc_trigger01=null
    return false
endfunction

// 36411 ~ 36418
function Func1454 takes nothing returns nothing
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>integer448
        call RemoveUnit(units013[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 36420 ~ 36423
function Func1455 takes real loc_real01,real loc_real02 returns nothing
    set units013[integer448]=CreateUnit(Player(0),'h06I',loc_real01,loc_real02,0)
    set integer448=integer448+1
endfunction
