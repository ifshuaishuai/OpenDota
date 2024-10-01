
// 33429 ~ 33440
function Func1383 takes item loc_item01,player loc_player01 returns nothing
    local real loc_real01
    local real loc_real02
    if Func0056(loc_player01)then
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    endif
    call SetItemPosition(loc_item01,loc_real01,loc_real02)
endfunction

// 33442 ~ 33446
function Func1384 takes nothing returns nothing
    if GetItemPlayer(GetEnumItem())==player008 then
        call Func1383(GetEnumItem(),player008)
    endif
endfunction

// 33448 ~ 33465
function Func1385 takes player loc_player01,player loc_player02 returns nothing
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    set player008=loc_player01
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func1382))
    set player008=loc_player02
    call GroupEnumUnitsOfPlayer(loc_group02,loc_player02,Condition(function Func1382))
    call ForGroup(loc_group01,function Func1380)
    call ForGroup(loc_group02,function Func1380)
    set player008=loc_player01
    call EnumItemsInRect(GetWorldBounds(),Condition(function Func0175),function Func1384)
    set player008=loc_player02
    call EnumItemsInRect(GetWorldBounds(),Condition(function Func0175),function Func1384)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    set loc_group01=null
    set loc_group02=null
endfunction

// 33467 ~ 33592
function Func1386 takes player loc_player01,player loc_player02 returns nothing
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    local integer loc_integer05
    local real loc_real01
    local real loc_real02
    local real loc_real03
    local real loc_real04
    local player loc_player03
    local string loc_string01=strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"
    local string loc_string02=strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"
    local integer loc_integer06
    set loc_integer06=integers081[GetPlayerId(loc_player01)]
    set integers081[GetPlayerId(loc_player01)]=integers081[GetPlayerId(loc_player02)]
    set integers081[GetPlayerId(loc_player02)]=loc_integer06
    if Func0056(loc_player01)then
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    else
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    endif
    if Func0056(loc_player02)then
        set loc_real03=GetRectCenterX(rect004)
        set loc_real04=GetRectCenterY(rect004)
    else
        set loc_real03=GetRectCenterX(rect011)
        set loc_real04=GetRectCenterY(rect011)
    endif
    set loc_integer03=1
    loop
        exitwhen loc_integer03>5
        if players003[loc_integer03]==loc_player01 or players004[loc_integer03]==loc_player01 then
            set loc_integer04=loc_integer03
        endif
        if players003[loc_integer03]==loc_player02 or players004[loc_integer03]==loc_player02 then
            set loc_integer05=loc_integer03
        endif
        set loc_integer03=loc_integer03+1
    endloop
    if Func0056(loc_player01)then
        set players004[loc_integer05]=loc_player01
        set players003[loc_integer04]=loc_player02
    else
        set players003[loc_integer05]=loc_player01
        set players004[loc_integer04]=loc_player02
    endif
    call SetPlayerTeam(players003[0],0)
    call SetPlayerTeam(players003[1],0)
    call SetPlayerTeam(players003[2],0)
    call SetPlayerTeam(players003[3],0)
    call SetPlayerTeam(players003[4],0)
    call SetPlayerTeam(players003[5],0)
    call SetPlayerTeam(players004[0],1)
    call SetPlayerTeam(players004[1],1)
    call SetPlayerTeam(players004[2],1)
    call SetPlayerTeam(players004[3],1)
    call SetPlayerTeam(players004[4],1)
    call SetPlayerTeam(players004[5],1)
    call Func0454()
    set loc_integer01=0
    set loc_integer02=0
    loop
        exitwhen loc_integer01>5
        loop
            exitwhen loc_integer02>5
            call SetPlayerAllianceStateBJ(players003[loc_integer01],players003[loc_integer02],3)
            call SetPlayerAllianceStateBJ(players004[loc_integer01],players004[loc_integer02],3)
            call SetPlayerAllianceStateBJ(players003[loc_integer01],players004[loc_integer02],0)
            call SetPlayerAllianceStateBJ(players004[loc_integer01],players003[loc_integer02],0)
            set loc_integer02=loc_integer02+1
        endloop
        set loc_integer02=0
        set loc_integer01=loc_integer01+1
    endloop
    call ForceClear(force001)
    call ForceClear(force002)
    call ForceAddPlayer(force001,players003[0])
    call ForceAddPlayer(force001,players003[1])
    call ForceAddPlayer(force001,players003[2])
    call ForceAddPlayer(force001,players003[3])
    call ForceAddPlayer(force001,players003[4])
    call ForceAddPlayer(force001,players003[5])
    call ForceAddPlayer(force002,players004[0])
    call ForceAddPlayer(force002,players004[1])
    call ForceAddPlayer(force002,players004[2])
    call ForceAddPlayer(force002,players004[3])
    call ForceAddPlayer(force002,players004[4])
    call ForceAddPlayer(force002,players004[5])
    call ExecuteFunc("Func0455")
    call Func1385(loc_player01,loc_player02)
    set boolean059=true
    call PanCameraToTimedForPlayer(loc_player01,loc_real01,loc_real02,0)
    call PanCameraToTimedForPlayer(loc_player02,loc_real03,loc_real04,0)
    call Func0453()
    set boolean058=false
    if trigger049!=null then
        call TriggerEvaluate(trigger049)
    endif
    if GetPlayerSlotState(loc_player02)==PLAYER_SLOT_STATE_EMPTY then
        set strings005[GetPlayerId(loc_player02)]=GetPlayerName(loc_player02)
    endif
    set loc_integer03=1
    loop
        exitwhen loc_integer03>5
        set loc_player03=players003[loc_integer03]
        if Func0061(loc_player03)then
            call Func1379(loc_player03)
        endif
        set loc_player03=players004[loc_integer03]
        if Func0061(loc_player03)then
            call Func1379(loc_player03)
        endif
        set loc_integer03=loc_integer03+1
    endloop
    call Func1375()
    call Func1060()
    call ClearTextMessages()
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20," ")
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,Func1377(loc_string01,loc_string02))
    call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20," ")
    call Func0432(loc_player01)
    call Func0432(loc_player02)
endfunction
