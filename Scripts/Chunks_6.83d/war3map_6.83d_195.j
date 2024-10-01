
// 40615 ~ 40633
function Func1543 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    set boolean032=true
    set loc_integer01=1
    set loc_integer02=integer045
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers074[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer043
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers072[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 40635 ~ 40653
function Func1544 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    set boolean031=true
    set loc_integer01=1
    set loc_integer02=integer043
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers072[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
    set loc_integer01=1
    set loc_integer02=integer044
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers073[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 40655 ~ 40666
function Func1545 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    set boolean120=true
    set loc_integer01=1
    set loc_integer02=integer046
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers075[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 40668 ~ 40679
function Func1546 takes nothing returns nothing
    local integer loc_integer01
    local integer loc_integer02
    set boolean121=true
    set loc_integer01=1
    set loc_integer02=integer047
    loop
        exitwhen loc_integer01>loc_integer02
        call Func0068(integers076[loc_integer01])
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 40681 ~ 40683
function Func1547 takes nothing returns nothing
    set boolean007=true
endfunction

// 40685 ~ 40699
function Func1548 takes nothing returns nothing
    set boolean008=true
    call SetPlayerTechResearched(players003[0],'R004',1)
    call SetPlayerTechResearched(players004[0],'R004',1)
    call SetPlayerHandicapXP(players003[1],1.5)
    call SetPlayerHandicapXP(players003[2],1.5)
    call SetPlayerHandicapXP(players003[3],1.5)
    call SetPlayerHandicapXP(players003[4],1.5)
    call SetPlayerHandicapXP(players003[5],1.5)
    call SetPlayerHandicapXP(players004[1],1.5)
    call SetPlayerHandicapXP(players004[2],1.5)
    call SetPlayerHandicapXP(players004[3],1.5)
    call SetPlayerHandicapXP(players004[4],1.5)
    call SetPlayerHandicapXP(players004[5],1.5)
endfunction

// 40701 ~ 40704
function Func1549 takes nothing returns nothing
    set boolean009=true
    call DisableTrigger(trigger056)
endfunction

// 40706 ~ 40708
function Func1550 takes nothing returns nothing
    set boolean010=true
endfunction

// 40710 ~ 40714
function Func1551 takes nothing returns nothing
    set boolean123=false
    call Func0152(bj_FORCE_ALL_PLAYERS,10,GetObjectName('n0HA'))
    call DisableTrigger(GetTriggeringTrigger())
endfunction
