
// 58159 ~ 58195
function Func2620 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A21L')
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    if GetUnitTypeId(loc_unit01)=='N017' or GetUnitTypeId(loc_unit01)=='N02B' then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4416))))==1)==false or loc_player01!=GetOwningPlayer(loc_unit01)then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21N',true)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21M',false)
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4416)),(1))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4417)),(2))
            if loc_player01!=GetOwningPlayer(loc_unit01)then
                call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
            endif
        endif
        if GetUnitAbilityLevel(loc_unit01,'A21N')!=loc_integer02 then
            call SetUnitAbilityLevel(loc_unit01,'A21N',loc_integer02)
        endif
    elseif GetUnitTypeId(loc_unit01)=='N016' then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4417))))==1)==false or loc_player01!=GetOwningPlayer(loc_unit01)then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21N',false)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21M',true)
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4417)),(1))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4416)),(2))
            if loc_player01!=GetOwningPlayer(loc_unit01)then
                call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
            endif
        endif
        if GetUnitAbilityLevel(loc_unit01,'A21M')!=loc_integer02 then
            call SetUnitAbilityLevel(loc_unit01,'A21M',loc_integer02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 58197 ~ 58213
function Func2621 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call Func0193(loc_unit01,'A21N')
    call Func0193(loc_unit01,'A21M')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21N',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21M',false)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4416)),(2))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4417)),(2))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2620))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 58215 ~ 58220
function Func2622 takes nothing returns boolean
    if GetLearnedSkill()=='A21L' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A21L')==1 then
        call Func2621()
    endif
    return false
endfunction

// 58222 ~ 58230
function Func2623 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2622))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2619))
    set loc_trigger01=null
endfunction
