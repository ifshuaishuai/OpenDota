
// 4498 ~ 4500
function Func0175 takes nothing returns boolean
    return true
endfunction

// 4502 ~ 4509
function Func0176 takes trigger loc_trigger01,playerunitevent loc_playerunitevent01 returns nothing
    local integer loc_integer01=0
    loop
        call TriggerRegisterPlayerUnitEvent(loc_trigger01,Player(loc_integer01),loc_playerunitevent01,Condition(function Func0175))
        set loc_integer01=loc_integer01+1
        exitwhen loc_integer01==16
    endloop
endfunction

// 4511 ~ 4519
function Func0177 takes trigger loc_trigger01,playerunitevent loc_playerunitevent01 returns nothing
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>5
        call TriggerRegisterPlayerUnitEvent(loc_trigger01,players003[loc_integer01],loc_playerunitevent01,Condition(function Func0175))
        call TriggerRegisterPlayerUnitEvent(loc_trigger01,players004[loc_integer01],loc_playerunitevent01,Condition(function Func0175))
        set loc_integer01=loc_integer01+1
    endloop
endfunction
