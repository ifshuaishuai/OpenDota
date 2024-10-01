
// 43017 ~ 43019
function Func1681 takes nothing returns boolean
    return GetUnitAbilityLevel(GetKillingUnit(),'A0O3')>0 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetKillingUnit()))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 43021 ~ 43031
function Func1682 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(27),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(27)))-1))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 43033 ~ 43064
function Func1683 takes nothing returns nothing
    local unit loc_unit01=GetKillingUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(27)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A0O3')
    local integer loc_integer04=4+8*loc_integer03
    local integer loc_integer05=loc_integer02*3
    local integer loc_integer06=Func0138(loc_integer05+loc_integer03*2+4,loc_integer04)
    local texttag loc_texttag01=CreateTextTag()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local trigger loc_trigger01=CreateTrigger()
    set integers145[GetPlayerId(loc_player01)]=integers145[GetPlayerId(loc_player01)]+loc_integer06
    call TriggerRegisterTimerEvent(loc_trigger01,30,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1682))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(26),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(27),(loc_integer02+1))
    call SetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD,loc_integer06+GetPlayerState(loc_player01,PLAYER_STATE_RESOURCE_GOLD))
    call SetTextTagText(loc_texttag01,"+"+I2S(loc_integer06),0.025)
    call SetTextTagPosUnit(loc_texttag01,loc_unit02,0)
    call SetTextTagColor(loc_texttag01,255,220,0,255)
    call SetTextTagVelocity(loc_texttag01,0,0.03)
    if GetLocalPlayer()==loc_player01 then
        call SetTextTagVisibility(loc_texttag01,true)
    else
        call SetTextTagVisibility(loc_texttag01,false)
    endif
    call SetTextTagFadepoint(loc_texttag01,2)
    call SetTextTagLifespan(loc_texttag01,3)
    call SetTextTagPermanent(loc_texttag01,false)
    set loc_trigger01=null
endfunction

// 43066 ~ 43072
function Func1684 takes nothing returns boolean
    local integer loc_integer01=integers145[GetPlayerId(GetTriggerPlayer())]
    if(GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01I' or GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01H' or GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01T' or GetUnitTypeId(units001[GetPlayerId(GetTriggerPlayer())])=='N01J')and loc_integer01>0 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0GQ')+" "+I2S(loc_integer01))
    endif
    return false
endfunction

// 43074 ~ 43102
function Func1685 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1681))
    call TriggerAddAction(loc_trigger01,function Func1683)
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
    call TriggerAddCondition(loc_trigger01,Condition(function Func1684))
    set loc_trigger01=null
endfunction

// 43112 ~ 43114
function Func1686 takes nothing returns boolean
    return GetSpellAbilityId()==('A0IL')
endfunction

// 43116 ~ 43118
function Func1687 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitTypeId(GetFilterUnit())!='n0F5'
endfunction
