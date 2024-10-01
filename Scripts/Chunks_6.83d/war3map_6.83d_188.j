
// 37952 ~ 37962
function Func1493 takes integer loc_integer01 returns integer
    local integer loc_integer02
    if loc_integer01==1 then
        set loc_integer02=GetUnitPointValueByType(integers072[GetRandomInt(1,integer043)])
    elseif loc_integer01==2 then
        set loc_integer02=GetUnitPointValueByType(integers073[GetRandomInt(1,integer044)])
    elseif loc_integer01==3 then
        set loc_integer02=GetUnitPointValueByType(integers074[GetRandomInt(1,integer045)])
    endif
    return loc_integer02
endfunction

// 37964 ~ 37978
function Func1494 takes integer loc_integer01,integer loc_integer02,integer loc_integer03 returns integer
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    set loc_integer06=Func1493(loc_integer03)
    if boolean028 and loc_integer01!=loc_integer06 and loc_integer02!=loc_integer06 then
        return loc_integer06
    endif
    loop
        exitwhen booleans001[loc_integer06]==false and loc_integer01!=loc_integer06 and loc_integer02!=loc_integer06
        set loc_integer06=Func1493(loc_integer03)
    endloop
    set booleans001[loc_integer06]=true
    return loc_integer06
endfunction

// 37980 ~ 38062
function Func1495 takes nothing returns nothing
    local player loc_player01
    local integer loc_integer01=1
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local trigger loc_trigger01
    local integer loc_integer05
    set boolean113=true
    set integer027=120
    set boolean038=false
    set boolean039=false
    call PauseUnit(unit228,true)
    call PauseUnit(unit229,true)
    call PauseUnit(unit230,true)
    call PauseUnit(unit231,true)
    call PauseUnit(unit232,true)
    call PauseUnit(unit233,true)
    call PauseUnit(unit234,true)
    call PauseUnit(unit235,true)
    call PauseUnit(unit236,true)
    call PauseUnit(unit237,true)
    call PauseUnit(unit238,true)
    call PauseUnit(unit239,true)
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_integer02=0
        set loc_integer03=0
        set loc_integer04=0
        if Func0059(loc_player01)then
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14F')
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14E')
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14H')
            set loc_integer02=Func1494(loc_integer02,loc_integer03,1)
            set loc_integer03=Func1494(loc_integer02,loc_integer03,2)
            set loc_integer04=Func1494(loc_integer02,loc_integer03,3)
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer02],1,1)
            call Func1491(loc_player01,integers070[loc_integer02])
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer03],1,1)
            call Func1491(loc_player01,integers070[loc_integer03])
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer04],1,1)
            call Func1491(loc_player01,integers070[loc_integer04])
            call ClearSelectionForPlayer(loc_player01)
            call SelectUnitAddForPlayer(units006[GetPlayerId(loc_player01)],loc_player01)
            call PanCameraToTimedForPlayer(loc_player01,GetRectCenterX(rect011),GetRectCenterY(rect011),0)
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15,"|cff99ccff"+GetObjectName('n0E6')+"|r")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
        endif
        set loc_player01=players004[loc_integer01]
        set loc_integer02=0
        set loc_integer03=0
        set loc_integer04=0
        if Func0059(loc_player01)then
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14F')
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14E')
            call UnitAddAbility(units006[GetPlayerId(loc_player01)],'A14H')
            set loc_integer02=Func1494(loc_integer02,loc_integer03,1)
            set loc_integer03=Func1494(loc_integer02,loc_integer03,2)
            set loc_integer04=Func1494(loc_integer02,loc_integer03,3)
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer02],1,1)
            call Func1491(loc_player01,integers070[loc_integer02])
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer03],1,1)
            call Func1491(loc_player01,integers070[loc_integer03])
            call AddUnitToStock(units006[GetPlayerId(loc_player01)],integers070[loc_integer04],1,1)
            call Func1491(loc_player01,integers070[loc_integer04])
            call ClearSelectionForPlayer(loc_player01)
            call SelectUnitAddForPlayer(units006[GetPlayerId(loc_player01)],loc_player01)
            call PanCameraToTimedForPlayer(loc_player01,GetRectCenterX(rect004),GetRectCenterY(rect004),0)
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15,"|cff99ccff"+GetObjectName('n0E6')+"|r")
            call DisplayTimedTextToPlayer(loc_player01,0,real003,15," ")
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_player01=null
    set loc_trigger01=null
endfunction
