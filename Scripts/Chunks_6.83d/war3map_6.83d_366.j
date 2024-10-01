
// 52422 ~ 52443
function Func2275 takes nothing returns boolean
    local integer loc_integer01=GetPlayerId(GetTriggerPlayer())
    local string loc_string01
    local string loc_string02
    local string loc_string03
    local string loc_string04
    local string loc_string05
    local string loc_string06
    if integers153[loc_integer01]>0 then
        set loc_string01=GetObjectName('n0JH')+" "+I2S(integers153[loc_integer01])
        set loc_string02=GetObjectName('n0JM')+" "+I2S(integers149[loc_integer01]+integers150[loc_integer01]+integers151[loc_integer01]+integers152[loc_integer01])+" ("+I2S((integers149[loc_integer01]+integers150[loc_integer01]+integers151[loc_integer01]+integers152[loc_integer01])*100/integers153[loc_integer01])+"%)"
        set loc_string03=GetObjectName('n0JL')+" "+I2S(integers149[loc_integer01])+" ("+I2S(100*integers149[loc_integer01]/integers153[loc_integer01])+"%)"
        set loc_string04=GetObjectName('n0JK')+" "+I2S(integers150[loc_integer01])+" ("+I2S(100*integers150[loc_integer01]/integers153[loc_integer01])+"%)"
        set loc_string05=GetObjectName('n0JJ')+" "+I2S(integers151[loc_integer01])+" ("+I2S(100*integers151[loc_integer01]/integers153[loc_integer01])+"%)"
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,loc_string01)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,loc_string02)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,loc_string03)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,loc_string04)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,loc_string05)
    endif
    return false
endfunction

// 52445 ~ 52472
function Func2276 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2274))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-stats",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[1],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[2],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[3],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[4],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players003[5],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[1],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[2],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[3],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[4],"-st",true)
    call TriggerRegisterPlayerChatEvent(loc_trigger01,players004[5],"-st",true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2275))
    set loc_trigger01=null
endfunction
