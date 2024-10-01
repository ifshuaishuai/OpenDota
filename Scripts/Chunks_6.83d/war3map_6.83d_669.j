
// 73011 ~ 73016
function Func3475 takes nothing returns boolean
    if GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='U00F' then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n09R')+" "+I2S((LoadInteger(hashtable001,(GetHandleId(units001[GetPlayerId(GetTriggerPlayer())])),(673))))+" "+GetObjectName('n09S'))
    endif
    return false
endfunction

// 73018 ~ 73051
function Func3476 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3474))
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
    call TriggerAddCondition(loc_trigger01,Condition(function Func3475))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3471))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3469))
    set loc_trigger01=null
endfunction

// 73053 ~ 73062
function Func3477 takes unit loc_unit01,unit loc_unit02 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e02A',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,'A0PZ')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    call UnitApplyTimedLife(loc_unit03,'BTLF',1)
    call UnitApplyTimedLife(loc_unit04,'BTLF',1)
    set loc_unit03=null
    set loc_unit04=null
endfunction
