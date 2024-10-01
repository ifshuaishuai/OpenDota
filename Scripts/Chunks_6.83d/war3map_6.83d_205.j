
// 41551 ~ 41553
function Func1600 takes nothing returns nothing
    set integers020[1]=0
endfunction

// 41555 ~ 41557
function Func1601 takes nothing returns nothing
    set integers020[2]=0
endfunction

// 41559 ~ 41561
function Func1602 takes nothing returns nothing
    set integers020[3]=0
endfunction

// 41563 ~ 41565
function Func1603 takes nothing returns nothing
    set integers020[4]=0
endfunction

// 41567 ~ 41569
function Func1604 takes nothing returns nothing
    set integers020[5]=0
endfunction

// 41571 ~ 41573
function Func1605 takes nothing returns nothing
    set integers020[7]=0
endfunction

// 41575 ~ 41577
function Func1606 takes nothing returns nothing
    set integers020[8]=0
endfunction

// 41579 ~ 41581
function Func1607 takes nothing returns nothing
    set integers020[9]=0
endfunction

// 41583 ~ 41585
function Func1608 takes nothing returns nothing
    set integers020[10]=0
endfunction

// 41587 ~ 41589
function Func1609 takes nothing returns nothing
    set integers020[11]=0
endfunction

// 41591 ~ 41609
function Func1610 takes nothing returns nothing
    local integer loc_integer01=1
    local string loc_string01
    local player loc_player01
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_string01=I2S(GetPlayerId(loc_player01))
        call StoreInteger(gamecache001,loc_string01,"id",loc_integer01)
        set loc_player01=players004[loc_integer01]
        set loc_string01=I2S(GetPlayerId(loc_player01))
        call StoreInteger(gamecache001,loc_string01,"id",loc_integer01+5)
        if GetLocalPlayer()==player003 then
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players003[loc_integer01])),"id")
            call SyncStoredInteger(gamecache001,I2S(GetPlayerId(players004[loc_integer01])),"id")
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 41611 ~ 41626
function Func1611 takes nothing returns boolean
    if boolean034 then
        call Func0073()
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00,strings001[GetPlayerId(player003)]+(strings005[GetPlayerId((player003))])+"|r"+" "+GetObjectName('n0CM'))
        call Func0152(bj_FORCE_ALL_PLAYERS,20.00," ")
        set boolean048=true
        call Func1407()
        call Func1325()
        call Func1060()
        call Func1106()
        call Func0526()
    endif
    call Func1610()
    call Func0035(GetTriggeringTrigger())
    return false
endfunction

// 41628 ~ 41632
function Func1612 takes nothing returns boolean
    set boolean002=true
    call Func0035(GetTriggeringTrigger())
    return false
endfunction

// 41634 ~ 41636
function Func1613 takes nothing returns nothing
    set boolean001=true
endfunction

// 41638 ~ 41640
function Func1614 takes nothing returns nothing
    set boolean024=true
endfunction

// 41642 ~ 41644
function Func1615 takes nothing returns nothing
    set boolean042=true
endfunction
