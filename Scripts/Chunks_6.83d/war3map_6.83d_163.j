
// 32552 ~ 32571
function Func1331 takes nothing returns boolean
    local integer loc_integer01=GetRandomInt(1,4)
    if loc_integer01==1 then
        set weathereffect005=weathereffect001
    elseif loc_integer01==2 then
        set weathereffect005=weathereffect002
    elseif loc_integer01==3 then
        set weathereffect005=weathereffect003
    elseif loc_integer01==4 then
        set weathereffect005=weathereffect004
    endif
    if booleans029[GetPlayerId(GetLocalPlayer())]then
        call EnableWeatherEffect(weathereffect001,false)
        call EnableWeatherEffect(weathereffect002,false)
        call EnableWeatherEffect(weathereffect003,false)
        call EnableWeatherEffect(weathereffect004,false)
        call EnableWeatherEffect(weathereffect005,true)
    endif
    return false
endfunction

// 32573 ~ 32602
function Func1332 takes nothing returns nothing
    local integer loc_integer01=GetRandomInt(1,4)
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,300,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1331))
    set booleans029[GetPlayerId(players003[1])]=false
    set booleans029[GetPlayerId(players003[2])]=false
    set booleans029[GetPlayerId(players003[3])]=false
    set booleans029[GetPlayerId(players003[4])]=false
    set booleans029[GetPlayerId(players003[5])]=false
    set booleans029[GetPlayerId(players004[1])]=false
    set booleans029[GetPlayerId(players004[2])]=false
    set booleans029[GetPlayerId(players004[3])]=false
    set booleans029[GetPlayerId(players004[4])]=false
    set booleans029[GetPlayerId(players004[5])]=false
    if boolean025 then
        set booleans029[GetPlayerId(player009)]=false
        set booleans029[GetPlayerId(player010)]=false
    endif
    if loc_integer01==1 then
        set weathereffect005=weathereffect001
    elseif loc_integer01==2 then
        set weathereffect005=weathereffect002
    elseif loc_integer01==3 then
        set weathereffect005=weathereffect003
    elseif loc_integer01==4 then
        set weathereffect005=weathereffect004
    endif
    set loc_trigger01=null
endfunction

// 32604 ~ 32655
function Func1333 takes nothing returns nothing
    local string loc_string01=StringCase(GetEventPlayerChatString(),false)
    if boolean101==true then
        set boolean101=false
        call Func1332()
    endif
    if loc_string01=="-weather snow"and GetLocalPlayer()==GetTriggerPlayer()then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=false
        call EnableWeatherEffect(weathereffect001,true)
        call EnableWeatherEffect(weathereffect002,false)
        call EnableWeatherEffect(weathereffect003,false)
        call EnableWeatherEffect(weathereffect004,false)
    endif
    if loc_string01=="-weather rain"and GetLocalPlayer()==GetTriggerPlayer()then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=false
        call EnableWeatherEffect(weathereffect001,false)
        call EnableWeatherEffect(weathereffect002,true)
        call EnableWeatherEffect(weathereffect003,false)
        call EnableWeatherEffect(weathereffect004,false)
    endif
    if loc_string01=="-weather moonlight"and GetLocalPlayer()==GetTriggerPlayer()then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=false
        call EnableWeatherEffect(weathereffect001,false)
        call EnableWeatherEffect(weathereffect002,false)
        call EnableWeatherEffect(weathereffect003,true)
        call EnableWeatherEffect(weathereffect004,false)
    endif
    if loc_string01=="-weather wind"and GetLocalPlayer()==GetTriggerPlayer()then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=false
        call EnableWeatherEffect(weathereffect001,false)
        call EnableWeatherEffect(weathereffect002,false)
        call EnableWeatherEffect(weathereffect003,false)
        call EnableWeatherEffect(weathereffect004,true)
    endif
    if loc_string01=="-weather off"and GetLocalPlayer()==GetTriggerPlayer()then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=false
        call EnableWeatherEffect(weathereffect001,false)
        call EnableWeatherEffect(weathereffect002,false)
        call EnableWeatherEffect(weathereffect003,false)
        call EnableWeatherEffect(weathereffect004,false)
    endif
    if loc_string01=="-weather random"then
        set booleans029[GetPlayerId(GetTriggerPlayer())]=true
        if GetLocalPlayer()==GetTriggerPlayer()then
            call EnableWeatherEffect(weathereffect001,false)
            call EnableWeatherEffect(weathereffect002,false)
            call EnableWeatherEffect(weathereffect003,false)
            call EnableWeatherEffect(weathereffect004,false)
            call EnableWeatherEffect(weathereffect005,true)
        endif
    endif
endfunction
