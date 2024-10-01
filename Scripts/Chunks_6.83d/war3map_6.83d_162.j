
// 32277 ~ 32280
function Func1313 takes nothing returns nothing
    call SaveBoolean(hashtable001,(GetHandleId(GetTriggerPlayer())),(139),(true))
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08R'))
endfunction

// 32282 ~ 32285
function Func1314 takes nothing returns nothing
    call SaveBoolean(hashtable001,(GetHandleId(GetTriggerPlayer())),(139),(false))
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08O'))
endfunction

// 32287 ~ 32289
function Func1315 takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,"   "+GetObjectName('n08P')+" "+I2S(integers003[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName('n08Q')+" "+I2S(integers004[GetPlayerId(GetTriggerPlayer())])+" "+GetObjectName('n08S')+" "+I2S(integers005[GetPlayerId(GetTriggerPlayer())]))
endfunction

// 32291 ~ 32301
function Func1316 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    if(GetEventPlayerChatString()=="-cson")then
        set booleans014[loc_integer01]=true
        set booleans028[loc_integer01]=true
    else
        set booleans014[loc_integer01]=false
        set booleans028[loc_integer01]=false
    endif
    call Func0526()
endfunction

// 32303 ~ 32319
function Func1317 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real01
    local real loc_real02
    if booleans023[loc_integer02]==false then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif units001[loc_integer02]!=null and Func0194(units001[loc_integer02])==false then
        set loc_real01=GetUnitX(units001[loc_integer02])
        set loc_real02=GetUnitY(units001[loc_integer02])
        call PanCameraToTimedForPlayer(Player(loc_integer02),loc_real01,loc_real02,0)
    endif
    set loc_trigger01=null
    return false
endfunction

// 32321 ~ 32338
function Func1318 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    local trigger loc_trigger01
    local integer loc_integer02
    local integer loc_integer03
    if booleans023[loc_integer01]==false and(GetEventPlayerChatString()=="-center"or GetEventPlayerChatString()=="-c")then
        set booleans023[loc_integer01]=true
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1317))
        call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0JW'))
    elseif GetEventPlayerChatString()=="-centeroff"or GetEventPlayerChatString()=="-co"then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0JX'))
        set booleans023[loc_integer01]=false
    endif
endfunction

// 32340 ~ 32343
function Func1319 takes nothing returns nothing
    set booleans024[GetPlayerId(GetTriggerPlayer())]=false
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,5,GetObjectName('n0JZ'))
endfunction

// 32345 ~ 32348
function Func1320 takes nothing returns nothing
    set booleans024[GetPlayerId(GetTriggerPlayer())]=true
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,5,GetObjectName('n0K0'))
endfunction

// 32350 ~ 32421
function Func1321 takes nothing returns nothing
    local integer loc_integer01=0
    local integer loc_integer02=GetPlayerId(GetTriggerPlayer())
    local integer loc_integer03=0
    local integer loc_integer04=0
    local player loc_player01
    if boolean100==false or boolean057==false then
        return
    endif
    if real241+90<(TimerGetElapsed(timer001))then
        loop
            exitwhen loc_integer01>15
            set booleans026[loc_integer01]=false
            set loc_integer01=loc_integer01+1
        endloop
    endif
    set real241=(TimerGetElapsed(timer001))+90
    set booleans026[loc_integer02]=true
    set loc_integer01=0
    loop
        exitwhen loc_integer01>15
        if Func0056(GetTriggerPlayer())then
            if Func0056(Player(loc_integer01))and Func0059(Player(loc_integer01))then
                set loc_integer04=loc_integer04+1
                if booleans026[loc_integer01]then
                    set loc_integer03=loc_integer03+1
                endif
            endif
        else
            if Func0057(Player(loc_integer01))and Func0059(Player(loc_integer01))then
                set loc_integer04=loc_integer04+1
                if booleans026[loc_integer01]then
                    set loc_integer03=loc_integer03+1
                endif
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_integer03*2>loc_integer04 then
        if Func0056(GetTriggerPlayer())then
            set loc_integer01=0
            loop
                exitwhen loc_integer01>5
                set loc_player01=players003[loc_integer01]
                if booleans018[GetPlayerId(loc_player01)]==true and booleans025[GetPlayerId(loc_player01)]==false then
                    call Func0152(force001,10,GetObjectName('n0KD')+" "+(strings005[GetPlayerId((loc_player01))]))
                    call Func0265(loc_player01)
                    set booleans025[GetPlayerId(loc_player01)]=true
                endif
                set loc_integer01=loc_integer01+1
            endloop
        else
            set loc_integer01=0
            loop
                exitwhen loc_integer01>5
                set loc_player01=players004[loc_integer01]
                if booleans018[GetPlayerId(loc_player01)]==true and booleans025[GetPlayerId(loc_player01)]==false then
                    call Func0152(force002,10,GetObjectName('n0KD')+" "+(strings005[GetPlayerId((loc_player01))]))
                    call Func0265(loc_player01)
                    set booleans025[GetPlayerId(loc_player01)]=true
                endif
                set loc_integer01=loc_integer01+1
            endloop
        endif
    else
        if Func0056(GetTriggerPlayer())then
            call Func0152(force001,10,GetObjectName('n0KB')+" "+I2S(loc_integer03)+"/"+I2S(loc_integer04)+" ("+(strings005[GetPlayerId((GetTriggerPlayer()))])+")")
        else
            call Func0152(force002,10,GetObjectName('n0KB')+" "+I2S(loc_integer03)+"/"+I2S(loc_integer04)+" ("+(strings005[GetPlayerId((GetTriggerPlayer()))])+")")
        endif
    endif
endfunction

// 32423 ~ 32449
function Func1322 takes nothing returns nothing
    local integer loc_integer01=1
    local integer loc_integer02
    local player loc_player01
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        set loc_integer02=R2I(TimerGetRemaining(timers002[GetPlayerId(loc_player01)]))
        if loc_integer02>0 and booleans027[GetPlayerId(loc_player01)]and boolean056==false and boolean036==false then
            call PlayerSetLeaderboard(loc_player01,leaderboards003[GetPlayerId(loc_player01)])
            call LeaderboardDisplay(leaderboards003[GetPlayerId(loc_player01)],true)
            call LeaderboardSetLabel(leaderboards003[GetPlayerId(loc_player01)],"   "+GetObjectName('n08V')+" "+I2S(loc_integer02)+" "+GetObjectName('n095'))
        else
            call LeaderboardDisplay(leaderboards003[GetPlayerId(loc_player01)],false)
        endif
        set loc_player01=players004[loc_integer01]
        set loc_integer02=R2I(TimerGetRemaining(timers002[GetPlayerId(loc_player01)]))
        if loc_integer02>0 and booleans027[GetPlayerId(loc_player01)]and boolean056==false and boolean036==false then
            call PlayerSetLeaderboard(loc_player01,leaderboards003[GetPlayerId(loc_player01)])
            call LeaderboardDisplay(leaderboards003[GetPlayerId(loc_player01)],true)
            call LeaderboardSetLabel(leaderboards003[GetPlayerId(loc_player01)],"   "+GetObjectName('n08V')+" "+I2S(loc_integer02)+" "+GetObjectName('n095'))
        else
            call LeaderboardDisplay(leaderboards003[GetPlayerId(loc_player01)],false)
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 32451 ~ 32498
function Func1323 takes nothing returns nothing
    local integer loc_integer01=0
    set loc_integer01=loc_integer01+1
    set leaderboards003[GetPlayerId(players003[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[loc_integer01],leaderboards003[GetPlayerId(players003[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players003[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players003[loc_integer01])],GetObjectName('n0E4')+": ")
    set leaderboards003[GetPlayerId(players004[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players004[loc_integer01],leaderboards003[GetPlayerId(players004[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players004[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players004[loc_integer01])],GetObjectName('n0E4')+": ")
    set loc_integer01=loc_integer01+1
    set leaderboards003[GetPlayerId(players003[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[loc_integer01],leaderboards003[GetPlayerId(players003[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players003[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players003[loc_integer01])],GetObjectName('n0E4')+": ")
    set leaderboards003[GetPlayerId(players004[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players004[loc_integer01],leaderboards003[GetPlayerId(players004[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players004[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players004[loc_integer01])],GetObjectName('n0E4')+": ")
    set loc_integer01=loc_integer01+1
    set leaderboards003[GetPlayerId(players003[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[loc_integer01],leaderboards003[GetPlayerId(players003[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players003[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players003[loc_integer01])],GetObjectName('n0E4')+": ")
    set leaderboards003[GetPlayerId(players004[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players004[loc_integer01],leaderboards003[GetPlayerId(players004[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players004[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players004[loc_integer01])],GetObjectName('n0E4')+": ")
    set loc_integer01=loc_integer01+1
    set leaderboards003[GetPlayerId(players003[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[loc_integer01],leaderboards003[GetPlayerId(players003[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players003[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players003[loc_integer01])],GetObjectName('n0E4')+": ")
    set leaderboards003[GetPlayerId(players004[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players004[loc_integer01],leaderboards003[GetPlayerId(players004[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players004[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players004[loc_integer01])],GetObjectName('n0E4')+": ")
    set loc_integer01=loc_integer01+1
    set leaderboards003[GetPlayerId(players003[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players003[loc_integer01],leaderboards003[GetPlayerId(players003[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players003[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players003[loc_integer01])],GetObjectName('n0E4')+": ")
    set leaderboards003[GetPlayerId(players004[loc_integer01])]=CreateLeaderboard()
    call PlayerSetLeaderboard(players004[loc_integer01],leaderboards003[GetPlayerId(players004[loc_integer01])])
    call LeaderboardDisplay(leaderboards003[GetPlayerId(players004[loc_integer01])],false)
    call LeaderboardSetLabel(leaderboards003[GetPlayerId(players004[loc_integer01])],GetObjectName('n0E4')+": ")
endfunction

// 32500 ~ 32509
function Func1324 takes nothing returns nothing
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    if GetEventPlayerChatString()=="-don"or GetEventPlayerChatString()=="-deathon"then
        set booleans027[loc_integer01]=true
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08W'))
    else
        set booleans027[loc_integer01]=false
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08X'))
    endif
endfunction

// 32511 ~ 32518
function Func1325 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerAddAction(loc_trigger01,function Func1323)
    call TriggerRegisterTimerEvent(loc_trigger01,.5,false)
    set loc_trigger01=CreateTrigger()
    call TriggerAddAction(loc_trigger01,function Func1322)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
endfunction

// 32520 ~ 32526
function Func1326 takes nothing returns nothing
    if(GetEventPlayerChatString()=="-showdeny")then
        set booleans028[GetPlayerId(GetTriggerPlayer())]=true
    else
        set booleans028[GetPlayerId(GetTriggerPlayer())]=false
    endif
endfunction

// 32528 ~ 32530
function Func1327 takes nothing returns nothing
    call Func0120(GetTriggerPlayer(),GetObjectName('n0HG'))
endfunction

// 32532 ~ 32540
function Func1328 takes nothing returns nothing
    local integer loc_integer01=0
    loop
        exitwhen loc_integer01>16
        set booleans028[loc_integer01]=true
        set booleans014[loc_integer01]=true
        set loc_integer01=loc_integer01+1
    endloop
endfunction

// 32542 ~ 32545
function Func1329 takes nothing returns nothing
    call ForceRemovePlayer(force003,GetTriggerPlayer())
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08U'))
endfunction

// 32547 ~ 32550
function Func1330 takes nothing returns nothing
    call ForceAddPlayer(force003,GetTriggerPlayer())
    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08Z'))
endfunction
