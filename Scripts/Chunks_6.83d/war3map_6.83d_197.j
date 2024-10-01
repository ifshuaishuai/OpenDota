
// 40738 ~ 40740
function Func1555 takes nothing returns nothing
    set boolean124=true
endfunction

// 40742 ~ 40744
function Func1556 takes nothing returns nothing
    set boolean125=true
endfunction

// 40746 ~ 40748
function Func1557 takes nothing returns nothing
    set boolean126=true
endfunction

// 40750 ~ 40752
function Func1558 takes nothing returns nothing
    set boolean127=true
endfunction

// 40754 ~ 40757
function Func1559 takes nothing returns nothing
    set boolean051=true
    set boolean052=false
endfunction

// 40759 ~ 40761
function Func1560 takes nothing returns nothing
    set boolean128=true
endfunction

// 40763 ~ 40766
function Func1561 takes nothing returns nothing
    set boolean055=true
    set boolean057=true
endfunction

// 40768 ~ 40770
function Func1562 takes nothing returns nothing
    set boolean054=true
endfunction

// 40772 ~ 40780
function Func1563 takes nothing returns nothing
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>5
        call SetPlayerName(players003[loc_integer01],(strings005[GetPlayerId((players003[loc_integer01]))])+" ("+I2S(integers001[GetPlayerId(players003[loc_integer01])])+"/"+I2S(integers002[GetPlayerId(players003[loc_integer01])])+" | "+I2S(integers003[GetPlayerId(players003[loc_integer01])])+"-"+I2S(integers004[GetPlayerId(players003[loc_integer01])])+")")
        call SetPlayerName(players004[loc_integer01],(strings005[GetPlayerId((players004[loc_integer01]))])+" ("+I2S(integers001[GetPlayerId(players004[loc_integer01])])+"/"+I2S(integers002[GetPlayerId(players004[loc_integer01])])+" | "+I2S(integers003[GetPlayerId(players004[loc_integer01])])+"-"+I2S(integers004[GetPlayerId(players004[loc_integer01])])+")")
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 40782 ~ 40789
function Func1564 takes nothing returns boolean
    if boolean129==false then
        if GetLocalPlayer()==player009 or GetLocalPlayer()==player010 then
            call Func1563()
        endif
    endif
    return false
endfunction

// 40791 ~ 40793
function Func1565 takes nothing returns nothing
    set boolean129=true
endfunction
