
// 33694 ~ 33711
function Func1391 takes nothing returns boolean
    local integer loc_integer01=0
    if boolean058 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,20,"|c00ff0303"+GetObjectName('n0FU')+"|r")
    endif
    set boolean100=true
    set boolean058=false
    set player006=null
    set player007=null
    loop
        exitwhen loc_integer01>16
        set booleans016[loc_integer01]=false
        set loc_integer01=loc_integer01+1
    endloop
    call Func0035(GetTriggeringTrigger())
    set trigger049=null
    return false
endfunction

// 33713 ~ 33755
function Func1392 takes player loc_player01,player loc_player02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=0
    local string loc_string01
    local string loc_string02
    local string loc_string03
    local string loc_string04
    local player loc_player03
    local string loc_string05
    set boolean100=false
    set boolean058=true
    set player006=loc_player01
    set player007=loc_player02
    loop
        exitwhen loc_integer01>16
        set booleans016[loc_integer01]=false
        set loc_integer01=loc_integer01+1
    endloop
    set booleans016[GetPlayerId(player006)]=true
    call TriggerRegisterTimerEvent(loc_trigger01,60,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1391))
    set trigger049=loc_trigger01
    set loc_string01=Func1376(loc_player01,loc_player02)
    set loc_string05=Func1374()
    set loc_integer01=1
    loop
        exitwhen loc_integer01>5
        set loc_player03=players003[loc_integer01]
        if loc_player03!=loc_player01 then
            call DisplayTimedTextToPlayer(loc_player03,0,0,20,loc_string01)
            call DisplayTimedTextToPlayer(loc_player03,0,0,20,loc_string05)
        endif
        set loc_player03=players004[loc_integer01]
        if loc_player03!=loc_player01 then
            call DisplayTimedTextToPlayer(loc_player03,0,0,20,loc_string01)
            call DisplayTimedTextToPlayer(loc_player03,0,0,20,loc_string05)
        endif
        set loc_integer01=loc_integer01+1
    endloop
    set loc_string01=Func1378(loc_player02)
    call DisplayTimedTextToPlayer(loc_player01,0,0,20,loc_string01)
    set loc_trigger01=null
endfunction

// 33757 ~ 33796
function Func1393 takes nothing returns nothing
    if boolean057==false then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0GX'))
        return
    endif
    if boolean025 and GetEventPlayerChatString()!="-ok"and GetEventPlayerChatString()!="-switch accept"and GetEventPlayerChatString()!="-no"then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0G0'))
        return
    endif
    if GetEventPlayerChatString()=="-switch accept"or GetEventPlayerChatString()=="-ok"then
        if boolean058 then
            call Func1389()
        endif
    elseif GetEventPlayerChatString()=="-no"then
        if boolean058 then
            call Func1388()
        endif
    elseif GetEventPlayerChatString()=="-switch"then
        if boolean058==false then
            call Func1390()
        endif
    elseif boolean058==false then
        set integer030=S2I(SubString(GetEventPlayerChatString(),8,StringLength(GetEventPlayerChatString())))
        if integer030>0 and integer030<6 then
            if Func0056(GetTriggerPlayer())then
                if booleans025[GetPlayerId(players004[integer030])]==false then
                    call Func1392(GetTriggerPlayer(),players004[integer030])
                else
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0HY'))
                endif
            else
                if booleans025[GetPlayerId(players003[integer030])]==false then
                    call Func1392(GetTriggerPlayer(),players003[integer030])
                else
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,GetObjectName('n0HY'))
                endif
            endif
        endif
    endif
endfunction
