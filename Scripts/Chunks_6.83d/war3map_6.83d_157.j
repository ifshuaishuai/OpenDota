
// 31962 ~ 31983
function Func1294 takes player loc_player01 returns boolean
    local integer loc_integer01=1
    local integer loc_integer02=0
    loop
        exitwhen loc_integer01>5
        if Func0056(loc_player01)then
            if units001[GetPlayerId(players003[loc_integer01])]!=null and players003[loc_integer01]!=loc_player01 and GetHeroLevel(units001[GetPlayerId(players003[loc_integer01])])==1 then
                set loc_integer02=loc_integer02+1
            endif
        else
            if units001[GetPlayerId(players004[loc_integer01])]!=null and players004[loc_integer01]!=loc_player01 and GetHeroLevel(units001[GetPlayerId(players004[loc_integer01])])==1 then
                set loc_integer02=loc_integer02+1
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
    if loc_integer02>0 then
        return true
    else
        return false
    endif
endfunction

// 31985 ~ 32009
function Func1295 takes nothing returns boolean
    if boolean051 or boolean052==false then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,"-swaphero "+GetObjectName('n088'))
        return false
    endif
    if booleans004[GetPlayerId(GetTriggerPlayer())]==true then
        if GetPlayerState(GetTriggerPlayer(),PLAYER_STATE_RESOURCE_GOLD)<100 then
            call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('N0MT'))
            return false
        endif
    endif
    if GetUnitState(units001[GetPlayerId(GetTriggerPlayer())],UNIT_STATE_LIFE)<1 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08F'))
        return false
    endif
    if boolean049==true then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08G')+" -swaphero.")
        return false
    endif
    if Func1294(GetTriggerPlayer())==false then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10,GetObjectName('n08H'))
        return false
    endif
    return true
endfunction

// 32011 ~ 32021
function Func1296 takes nothing returns nothing
    if Func1295()then
        if GetEventPlayerChatString()=="-swap"or GetEventPlayerChatString()=="-swaphero"then
            call Func1293()
        elseif GetEventPlayerChatString()=="-swapcancel"then
            call FlushChildHashtable(hashtable001,(800+GetPlayerId(GetTriggerPlayer())))
        else
            call Func1292()
        endif
    endif
endfunction
