
// 39251 ~ 39263
function Func1510 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetTriggerEvalCount(loc_trigger01)
    local integer loc_integer02=20-(loc_integer01-(loc_integer01/20)*20)
    call LeaderboardSetLabel(leaderboard002,"           "+GetObjectName('n0EZ')+" "+I2S(loc_integer02))
    if loc_integer01>125 then
        call DestroyLeaderboard(leaderboard002)
        call Func1325()
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    return false
endfunction

// 39265 ~ 39283
function Func1511 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1510))
    set leaderboard002=CreateLeaderboard()
    call LeaderboardSetStyle(leaderboard002,true,false,false,false)
    call LeaderboardDisplay(leaderboard002,false)
    call PlayerSetLeaderboard(players003[1],leaderboard002)
    call PlayerSetLeaderboard(players003[2],leaderboard002)
    call PlayerSetLeaderboard(players003[3],leaderboard002)
    call PlayerSetLeaderboard(players003[4],leaderboard002)
    call PlayerSetLeaderboard(players003[5],leaderboard002)
    call PlayerSetLeaderboard(players004[1],leaderboard002)
    call PlayerSetLeaderboard(players004[2],leaderboard002)
    call PlayerSetLeaderboard(players004[3],leaderboard002)
    call PlayerSetLeaderboard(players004[4],leaderboard002)
    call PlayerSetLeaderboard(players004[5],leaderboard002)
    set loc_trigger01=null
endfunction

// 39285 ~ 39437
function Func1512 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(25)))
    local player loc_player01
    local player loc_player02
    local player loc_player03
    local player loc_player04
    if loc_integer02==0 then
        if integer459==1 then
            set loc_player01=players003[1]
        else
            set loc_player01=players004[1]
        endif
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,strings001[GetPlayerId(loc_player01)]+(strings005[GetPlayerId((loc_player01))])+"|r"+" "+GetObjectName('n064'))
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        if GetLocalPlayer()==loc_player01 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==1 then
        if integer459==1 then
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
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==2 then
        if integer459==1 then
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
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==3 then
        if integer459==1 then
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
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==4 then
        if integer459==1 then
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
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        call SetPlayerState(loc_player02,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player02)])
        if GetLocalPlayer()==loc_player01 or GetLocalPlayer()==loc_player02 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==5 then
        if integer459==1 then
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
        call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,integers142[GetPlayerId(loc_player01)])
        if GetLocalPlayer()==loc_player01 then
            call LeaderboardDisplay(leaderboard002,true)
        else
            call LeaderboardDisplay(leaderboard002,false)
        endif
    elseif loc_integer02==6 then
        if integer459==1 then
            set loc_player03=players004[5]
        else
            set loc_player03=players003[5]
        endif
        call Func0071(loc_player03)
        call LeaderboardDisplay(leaderboard002,false)
        call SuspendTimeOfDay(false)
    endif
    if loc_integer02>6 then
        set boolean118=true
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

// 39439 ~ 39468
function Func1513 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(169)))
    set boolean092=true
    call Func0035(loc_trigger02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,20,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1512))
    call SaveInteger(hashtable001,(loc_integer01),(25),(0))
    call SetPlayerState(players003[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call SetPlayerState(players004[1],PLAYER_STATE_RESOURCE_GOLD,0)
    call EnableTrigger(trigger052)
    call EnableTrigger(trigger050)
    set integer459=GetRandomInt(1,2)
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    if integer459==1 then
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n09O')+" "+GetObjectName('n05K')+" "+strings001[GetPlayerId(players003[0])]+GetObjectName('n065')+"|r"+" "+GetObjectName('n066'))
    else
        call Func0152(bj_FORCE_ALL_PLAYERS,15.00,GetObjectName('n09O')+" "+GetObjectName('n05K')+" "+strings001[GetPlayerId(players004[0])]+GetObjectName('n06C')+"|r"+" "+GetObjectName('n066'))
    endif
    call Func0152(bj_FORCE_ALL_PLAYERS,15.00," ")
    call Func1511()
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_trigger02=null
    return false
endfunction
