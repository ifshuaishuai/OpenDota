
// 39039 ~ 39191
function Func1507 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(25)))
    local player loc_player01
    local player loc_player02
    local player loc_player03
    local player loc_player04
    if loc_integer02==0 then
        if integer458==1 then
            set loc_player01=players003[1]
        else
            set loc_player01=players004[1]
        endif
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        if GetLocalPlayer()==loc_player01 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==1 then
        if integer458==1 then
            set loc_player01=players004[1]
            set loc_player02=players004[2]
            set loc_player03=players003[1]
        else
            set loc_player01=players003[1]
            set loc_player02=players003[2]
            set loc_player03=players004[1]
        endif
        call Func0071(loc_player03)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==2 then
        if integer458==1 then
            set loc_player01=players003[2]
            set loc_player02=players003[3]
            set loc_player03=players004[1]
            set loc_player04=players004[2]
        else
            set loc_player01=players004[2]
            set loc_player02=players004[3]
            set loc_player03=players003[1]
            set loc_player04=players003[2]
        endif
        call Func0071(loc_player03)
        call Func0071(loc_player04)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==3 then
        if integer458==1 then
            set loc_player01=players004[3]
            set loc_player02=players004[4]
            set loc_player03=players003[2]
            set loc_player04=players003[3]
        else
            set loc_player01=players003[3]
            set loc_player02=players003[4]
            set loc_player03=players004[2]
            set loc_player04=players004[3]
        endif
        call Func0071(loc_player03)
        call Func0071(loc_player04)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==4 then
        if integer458==1 then
            set loc_player01=players003[4]
            set loc_player02=players003[5]
            set loc_player03=players004[3]
            set loc_player04=players004[4]
        else
            set loc_player01=players004[4]
            set loc_player02=players004[5]
            set loc_player03=players003[3]
            set loc_player04=players003[4]
        endif
        call Func0071(loc_player03)
        call Func0071(loc_player04)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player02)]+(strings005[GetPlayerId((loc_player02))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==5 then
        if integer458==1 then
            set loc_player01=players004[5]
            set loc_player03=players003[4]
            set loc_player04=players003[5]
        else
            set loc_player01=players003[5]
            set loc_player03=players004[4]
            set loc_player04=players004[5]
        endif
        call Func0071(loc_player03)
        call Func0071(loc_player04)
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers141[GetPlayerId(loc_player01)])
        if GetLocalPlayer()==loc_player01 then
            call LeaderboardDisplay(leaderboard001,true)
        else
            call LeaderboardDisplay(leaderboard001,false)
        endif
    elseif loc_integer02==6 then
        if integer458==1 then
            set loc_player03=players004[5]
        else
            set loc_player03=players003[5]
        endif
        call Func0071(loc_player03)
        call LeaderboardDisplay(leaderboard001,false)
        call SuspendTimeOfDay(false)
    endif
    if loc_integer02>6 then
        set boolean116=true
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SaveInteger(hashtable001,(loc_integer01),(25),(loc_integer02+1))
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_player02=null
    set loc_player03=null
    set loc_player04=null
    return false
endfunction

// 39193 ~ 39215
function Func1508 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01
    call Func0035(loc_trigger01)
    call SuspendTimeOfDay(true)
    set integer458=GetRandomInt(1,2)
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    if integer458==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players003[0])]+GetObjectName('n065')+"|r"+" "+GetObjectName('n066'))
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n05K')+" "+strings001[GetPlayerId(players004[0])]+GetObjectName('n06C')+"|r"+" "+GetObjectName('n066'))
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,20,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1507))
    call SaveInteger(hashtable001,(loc_integer01),(25),(0))
    call Func1506()
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 39217 ~ 39249
function Func1509 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01=1
    set boolean115=true
    set integer027=180
    set boolean039=false
    set boolean038=false
    call Func1168()
    set integers141[GetPlayerId(players003[1])]=GetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players003[2])]=GetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players003[3])]=GetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players003[4])]=GetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players003[5])]=GetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players004[1])]=GetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players004[2])]=GetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players004[3])]=GetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players004[4])]=GetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD)
    set integers141[GetPlayerId(players004[5])]=GetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD)
    call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[2],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[3],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[4],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players003[5],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[2],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[3],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[4],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[5],PLAYER_STATE_RESOURCE_GOLD,0)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,15-TimerGetElapsed(timer001),false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1508))
    set loc_trigger01=null
endfunction
