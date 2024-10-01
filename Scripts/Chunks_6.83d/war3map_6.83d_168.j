
// 33594 ~ 33617
function Func1387 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    set integer031=0
    set integer032=0
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        if Func0059(loc_player01)then
            set integer032=integer032+1
            if booleans016[GetPlayerId(loc_player01)]==true then
                set integer031=integer031+1
            endif
        endif
        set loc_player01=players004[loc_integer01]
        if Func0059(loc_player01)then
            set integer032=integer032+1
            if booleans016[GetPlayerId(loc_player01)]==true then
                set integer031=integer031+1
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 33619 ~ 33626
function Func1388 takes nothing returns nothing
    set boolean058=false
    if trigger049!=null then
        call TriggerEvaluate(trigger049)
    endif
    call ClearTextMessages()
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,Func1373(GetTriggerPlayer()))
endfunction

// 33628 ~ 33666
function Func1389 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01
    local integer loc_integer02=0
    local integer loc_integer03=0
    local integer loc_integer04=0
    if booleans016[GetPlayerId(GetTriggerPlayer())]==false then
        set booleans016[GetPlayerId(GetTriggerPlayer())]=true
        call Func1387()
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,strings001[GetPlayerId(GetTriggerPlayer())]+(strings005[GetPlayerId((GetTriggerPlayer()))])+"|r|c006699CC "+GetObjectName('n0FT')+"|r ("+I2S(integer031)+"/"+I2S(integer032)+")")
    endif
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        if Func0059(loc_player01)and booleans016[GetPlayerId(loc_player01)]==false then
            set loc_integer02=loc_integer02+1
            set loc_integer04=loc_integer04+1
        endif
        if Func0059(loc_player01)and booleans016[GetPlayerId(loc_player01)]==true then
            set loc_integer03=loc_integer03+1
            set loc_integer04=loc_integer04+1
        endif
        set loc_player01=players004[loc_integer01]
        if Func0059(loc_player01)and booleans016[GetPlayerId(loc_player01)]==false then
            set loc_integer02=loc_integer02+1
            set loc_integer04=loc_integer04+1
        endif
        if Func0059(loc_player01)and booleans016[GetPlayerId(loc_player01)]==true then
            set loc_integer03=loc_integer03+1
            set loc_integer04=loc_integer04+1
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_integer02<2 and loc_integer03>=R2I(loc_integer04/2)then
        if(loc_integer04==2 and loc_integer03>1)or loc_integer04!=2 then
            call Func1386(player006,player007)
        endif
    endif
endfunction

// 33668 ~ 33692
function Func1390 takes nothing returns nothing
    local integer loc_integer01=1
    local player loc_player01=GetTriggerPlayer()
    local player loc_player02
    local string loc_string01
    local string loc_string02
    loop
        exitwhen loc_integer01>5
        set loc_string01=""
        set loc_string02=""
        if Func0056(loc_player01)then
            set loc_player02=players004[loc_integer01]
        else
            set loc_player02=players003[loc_integer01]
        endif
        if GetPlayerSlotState(loc_player02)==PLAYER_SLOT_STATE_LEFT and GetPlayerController(loc_player02)==MAP_CONTROL_USER then
            set loc_string01="|c00ff0303["+GetObjectName('n0FY')+"]|r"
        endif
        if units001[GetPlayerId(loc_player02)]!=null then
            set loc_string02=" ("+GetUnitName(units001[GetPlayerId(loc_player02)])+")"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15,GetObjectName('n083')+"|c006699CC "+"-switch "+I2S(loc_integer01)+"|r "+GetObjectName('n0FQ')+" "+strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+loc_string02+"|r "+loc_string01)
        set loc_integer01=loc_integer01+1
    endloop
endfunction
