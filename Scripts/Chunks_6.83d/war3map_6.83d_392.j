
// 53872 ~ 53878
function Func2366 takes nothing returns boolean
    local integer loc_integer01=integers154[GetPlayerId(GetTriggerPlayer())]
    if GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01A' and loc_integer01>0 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0HM')+" "+I2S(loc_integer01))
    endif
    return false
endfunction

// 53880 ~ 53910
function Func2367 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2360))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2365))
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
    call TriggerAddCondition(loc_trigger01,Condition(function Func2366))
    set loc_trigger01=null
endfunction
