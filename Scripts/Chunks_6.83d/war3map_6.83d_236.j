
// 43950 ~ 43967
function Func1737 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEvalCount(loc_trigger01)>10 and GetUnitAbilityLevel(loc_unit01,'B00L')==0)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 43969 ~ 43993
function Func1738 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local string loc_string01="war3mapImported\\TrackBuff.mdx"
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))and Func0107(GetLocalPlayer())==false then
        set loc_string01=""
    endif
    call Func0193(loc_unit03,'A115')
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetSpellTargetUnit(),EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1737))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget(loc_string01,loc_unit01,"overhead")))
    call SaveReal(hashtable001,(GetHandleId(GetSpellTargetUnit())),(314),(((TimerGetElapsed(timer001))+30)*1.0))
    call SavePlayerHandle(hashtable001,(GetHandleId(GetSpellTargetUnit())),(54),(GetOwningPlayer(GetTriggerUnit())))
    call SaveInteger(hashtable001,(GetHandleId(GetSpellTargetUnit())),(5),(GetUnitAbilityLevel(GetTriggerUnit(),'A0B4')))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 43995 ~ 44000
function Func1739 takes nothing returns boolean
    if GetSpellAbilityId()=='A0B4' then
        call Func1738()
    endif
    return false
endfunction

// 44002 ~ 44010
function Func1740 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1739))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1736))
    set loc_trigger01=null
endfunction
