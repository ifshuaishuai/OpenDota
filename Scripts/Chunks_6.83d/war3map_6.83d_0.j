
// 2475 ~ 2493
function Func0001 takes real loc_real01 returns nothing
    local real loc_real02
    local real loc_real03=TimerGetElapsed(timer004)
    if loc_real03<=0 then
        set timer004=CreateTimer()
        call TimerStart(timer004,1000000,false,null)
    endif
    if(loc_real01>0)then
        loop
            set loc_real02=loc_real01-TimerGetElapsed(timer004)+loc_real03
            exitwhen loc_real02<=0
            if(loc_real02>bj_POLLED_WAIT_SKIP_THRESHOLD)then
                call TriggerSleepAction(0.1*loc_real02)
            else
                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            endif
        endloop
    endif
endfunction

// 2495 ~ 2497
function Func0002 takes location loc_location01,real loc_real01,real loc_real02 returns location
    return Location(GetLocationX(loc_location01)+loc_real01*Cos(loc_real02*bj_DEGTORAD),GetLocationY(loc_location01)+loc_real01*Sin(loc_real02*bj_DEGTORAD))
endfunction

// 2499 ~ 2503
function Func0003 takes nothing returns boolean
    local real loc_real01=GetDestructableX(GetFilterDestructable())-real421
    local real loc_real02=GetDestructableY(GetFilterDestructable())-real422
    return(loc_real01*loc_real01+loc_real02*loc_real02<=bj_enumDestructableRadius)
endfunction

// 2505 ~ 2509
function Func0004 takes player loc_player01 returns force
    set force004=CreateForce()
    call ForceEnumEnemies(force004,loc_player01,boolexpr001)
    return force004
endfunction
