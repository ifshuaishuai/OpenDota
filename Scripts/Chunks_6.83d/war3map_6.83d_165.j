
// 32950 ~ 32973
function Func1356 takes nothing returns nothing
    local string loc_string01=StringCase(GetEventPlayerChatString(),false)
    local boolean loc_boolean01=loc_string01=="-mode1"
    local boolean loc_boolean02=loc_string01=="-mode2"
    if loc_boolean01==false and loc_boolean02==false then
        return
    endif
    if(TimerGetElapsed(timer001))>60 then
        call Func0121(GetTriggerPlayer(),GetObjectName('n02X'))
        return
    elseif(TimerGetElapsed(timer001))<15 then
        call Func0121(GetTriggerPlayer(),GetObjectName('n02X'))
        return
    endif
    if loc_boolean01 then
        set integer026=1
    elseif loc_boolean02 then
        set integer026=2
    endif
    call Func1248()
    call Func0152(force003,15,GetObjectName('n05N')+" "+GetObjectName('n055'))
    call Func0152(force003,15,GetObjectName('n05R'))
    call Func0035(GetTriggeringTrigger())
endfunction

// 32975 ~ 32978
function Func1357 takes nothing returns boolean
    call ExecuteFunc("Func1356")
    return false
endfunction

// 32980 ~ 32989
function Func1358 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,player003,"-",false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1357))
    call Func0152(force003,30,"|cff99ccff"+GetObjectName('n05S')+"|r")
    call Func0152(force003,30,GetObjectName('n05T')+" "+GetObjectName('n05H')+" "+GetObjectName('n05V')+" ")
    call Func0152(force003,30," ")
    call Func0152(force003,30,"|cff99ccff-mode1|r "+GetObjectName('n05W')+". ("+GetObjectName('n05X')+")")
    call Func0152(force003,30,"|cff99ccff-mode2|r "+GetObjectName('n062'))
endfunction
