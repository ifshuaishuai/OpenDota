
// 51315 ~ 51322
function Func2212 takes nothing returns boolean
    local integer loc_integer01=integers147[GetPlayerId(GetTriggerPlayer())]
    local integer loc_integer02=integers148[GetPlayerId(GetTriggerPlayer())]
    if GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01V' and loc_integer02>0 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0GM')+" "+R2S(I2R(loc_integer01)/I2R(loc_integer02)*100)+"% ("+I2S(loc_integer01)+"/"+I2S(loc_integer02)+")")
    endif
    return false
endfunction

// 51324 ~ 51353
function Func2213 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2207))
    call TriggerAddAction(loc_trigger01,function Func2211)
    call Func0132(('A0L7'))
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
    call TriggerAddCondition(loc_trigger01,Condition(function Func2212))
    set loc_trigger01=null
endfunction

// 51355 ~ 51357
function Func2214 takes nothing returns boolean
    return GetSpellAbilityId()=='A0FN'
endfunction

// 51359 ~ 51368
function Func2215 takes nothing returns boolean
    local unit loc_unit01=GetFilterUnit()
    if IsUnitInGroup(loc_unit01,group001)then
        return false
    endif
    if IsUnitEnemy(loc_unit01,GetOwningPlayer(unit002))and GetUnitAbilityLevel(loc_unit01,'A04R')!=1 and GetUnitState(loc_unit01,UNIT_STATE_LIFE)>0 and IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==false then
        return true
    endif
    return false
endfunction
