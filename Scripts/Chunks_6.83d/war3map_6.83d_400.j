
// 54379 ~ 54400
function Func2396 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local effect loc_effect01=(LoadEffectHandle(hashtable001,(loc_integer01),(32)))
    local player loc_player01=GetOwningPlayer(loc_unit01)
    call UnitShareVision(loc_unit03,loc_player01,false)
    call DestroyEffect(loc_effect01)
    call RemoveUnit(loc_unit02)
    call UnitRemoveAbility(loc_unit03,'B06H')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_effect01=null
    set loc_player01=null
    return false
endfunction

// 54402 ~ 54428
function Func2397 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local unit loc_unit03
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local string loc_string01="effects\\Snipe Target.mdx"
    if IsPlayerAlly(GetLocalPlayer(),loc_player01)==false and Func0107(GetLocalPlayer())==false then
        set loc_string01=""
    endif
    call UnitShareVision(loc_unit02,loc_player01,true)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e01R',0,0,0)
    call Func0193(loc_unit03,'A0NI')
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit02,"overhead")))
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2396))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_player01=null
endfunction

// 54430 ~ 54435
function Func2398 takes nothing returns boolean
    if GetSpellAbilityId()=='A04P' or GetSpellAbilityId()=='A1AU' then
        call Func2397()
    endif
    return false
endfunction

// 54437 ~ 54442
function Func2399 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2398))
    set loc_trigger01=null
endfunction
